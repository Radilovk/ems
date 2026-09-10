.class public Lorg/apache/poi/ss/format/CellFormatPart;
.super Ljava/lang/Object;
.source "CellFormatPart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;
    }
.end annotation


# static fields
.field public static final COLOR_GROUP:I

.field public static final COLOR_PAT:Ljava/util/regex/Pattern;

.field public static final CONDITION_OPERATOR_GROUP:I

.field public static final CONDITION_PAT:Ljava/util/regex/Pattern;

.field public static final CONDITION_VALUE_GROUP:I

.field public static final FORMAT_PAT:Ljava/util/regex/Pattern;

.field private static final NAMED_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/awt/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIFICATION_GROUP:I

.field public static final SPECIFICATION_PAT:Ljava/util/regex/Pattern;


# instance fields
.field private final color:Ljava/awt/Color;

.field private condition:Lorg/apache/poi/ss/format/CellFormatCondition;

.field private final format:Lorg/apache/poi/ss/format/CellFormatter;

.field private final type:Lorg/apache/poi/ss/format/CellFormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    .line 59
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v0

    .line 60
    .local v0, "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/poi/hssf/util/HSSFColor;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/util/HSSFColor;

    .line 61
    .local v2, "color":Lorg/apache/poi/hssf/util/HSSFColor;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 62
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/util/HSSFColor;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    invoke-virtual {v2}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v5

    .line 65
    .local v5, "rgb":[S
    new-instance v6, Ljava/awt/Color;

    const/4 v7, 0x0

    aget-short v7, v5, v7

    const/4 v8, 0x1

    aget-short v8, v5, v8

    const/4 v9, 0x2

    aget-short v9, v5, v9

    invoke-direct {v6, v7, v8, v9}, Ljava/awt/Color;-><init>(III)V

    .line 66
    .local v6, "c":Ljava/awt/Color;
    sget-object v7, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v9, 0x20

    if-lez v8, :cond_0

    .line 68
    sget-object v8, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    const-string v8, "_PERCENT"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 70
    sget-object v10, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    const-string v11, "%"

    invoke-virtual {v4, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v2    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/util/HSSFColor;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rgb":[S
    .end local v6    # "c":Ljava/awt/Color;
    :cond_1
    goto :goto_0

    .line 105
    .end local v0    # "colors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/poi/hssf/util/HSSFColor;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v0, "([<>=]=?|!=|<>)    # The operator\n  \\s*([0-9]+(?:\\.[0-9]*)?)\\s*  # The constant to test against\n"

    .line 108
    .local v0, "condition":Ljava/lang/String;
    const-string v1, "\\[(black|blue|cyan|green|magenta|red|white|yellow|color [0-9]+)\\]"

    .line 115
    .local v1, "color":Ljava/lang/String;
    const-string v2, "\\\\.                 # Quoted single character\n|\"([^\\\\\"]|\\\\.)*\"         # Quoted string of characters (handles escaped quotes like \\\") \n|_.                             # Space as wide as a given character\n|\\*.                           # Repeating fill character\n|@                              # Text: cell text\n|([0?\\#](?:[0?\\#,]*))         # Number: digit + other digits and commas\n|e[-+]                          # Number: Scientific: Exponent\n|m{1,5}                         # Date: month or minute spec\n|d{1,4}                         # Date: day/date spec\n|y{2,4}                         # Date: year spec\n|h{1,2}                         # Date: hour spec\n|s{1,2}                         # Date: second spec\n|am?/pm?                        # Date: am/pm spec\n|\\[h{1,2}\\]                   # Elapsed time: hour spec\n|\\[m{1,2}\\]                   # Elapsed time: minute spec\n|\\[s{1,2}\\]                   # Elapsed time: second spec\n|[^;]                           # A character\n"

    .line 133
    .local v2, "part":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")?                  # Text color\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(?:\\["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\])?                # Condition\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "((?:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")+)                        # Format spec\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "format":Ljava/lang/String;
    const/4 v4, 0x6

    .line 138
    .local v4, "flags":I
    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_PAT:Ljava/util/regex/Pattern;

    .line 139
    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_PAT:Ljava/util/regex/Pattern;

    .line 140
    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    .line 141
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    .line 147
    const-string v6, "[Blue]@"

    const-string v7, "Blue"

    invoke-static {v5, v6, v7}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_GROUP:I

    .line 148
    sget-object v5, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    const-string v6, "[>=1]@"

    const-string v7, ">="

    invoke-static {v5, v6, v7}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_OPERATOR_GROUP:I

    .line 149
    sget-object v5, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    const-string v7, "1"

    invoke-static {v5, v6, v7}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_VALUE_GROUP:I

    .line 150
    sget-object v5, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    const-string v6, "[Blue][>1]\\a ?"

    const-string v7, "\\a ?"

    invoke-static {v5, v6, v7}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    .line 151
    .end local v0    # "condition":Ljava/lang/String;
    .end local v1    # "color":Ljava/lang/String;
    .end local v2    # "part":Ljava/lang/String;
    .end local v3    # "format":Ljava/lang/String;
    .end local v4    # "flags":I
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 165
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-static {v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getColor(Ljava/util/regex/Matcher;)Ljava/awt/Color;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->color:Ljava/awt/Color;

    .line 170
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getCondition(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatCondition;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    .line 171
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    .line 172
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getFormatter(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    .line 173
    return-void

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static expandChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "part"    # Ljava/lang/String;

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 509
    .local v0, "ch":C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "repl":Ljava/lang/String;
    return-object v1
.end method

.method private static findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "pat"    # Ljava/util/regex/Pattern;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "marker"    # Ljava/lang/String;

    .line 209
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 210
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const-string v2, "\""

    if-eqz v1, :cond_2

    .line 214
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v1, v3, :cond_1

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "grp":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    return v1

    .line 214
    .end local v3    # "grp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" not found in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pattern \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" doesn\'t match \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private formatType(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatType;
    .locals 6
    .param p1, "fdesc"    # Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 292
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "General"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 295
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 296
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 297
    .local v1, "couldBeDate":Z
    const/4 v2, 0x0

    .line 298
    .local v2, "seenZero":Z
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "repl":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 301
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 323
    :sswitch_0
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->ELAPSED:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v3

    .line 316
    :sswitch_1
    const/4 v1, 0x1

    .line 317
    goto :goto_1

    .line 308
    :sswitch_2
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v3

    .line 303
    :sswitch_3
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->TEXT:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v3

    .line 320
    :sswitch_4
    const/4 v2, 0x1

    .line 321
    goto :goto_1

    .line 326
    :sswitch_5
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v3

    .line 329
    .end local v4    # "repl":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 332
    :cond_2
    if-eqz v1, :cond_3

    .line 333
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v3

    .line 334
    :cond_3
    if-eqz v2, :cond_4

    .line 335
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v3

    .line 336
    :cond_4
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->TEXT:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v3

    .line 293
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "couldBeDate":Z
    .end local v2    # "seenZero":Z
    :cond_5
    :goto_2
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatType;->GENERAL:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_5
        0x30 -> :sswitch_4
        0x3f -> :sswitch_5
        0x40 -> :sswitch_3
        0x44 -> :sswitch_2
        0x48 -> :sswitch_1
        0x4d -> :sswitch_1
        0x53 -> :sswitch_1
        0x59 -> :sswitch_2
        0x5b -> :sswitch_0
        0x64 -> :sswitch_2
        0x68 -> :sswitch_1
        0x6d -> :sswitch_1
        0x73 -> :sswitch_1
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private getCellFormatType(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatType;
    .locals 2
    .param p1, "matcher"    # Ljava/util/regex/Matcher;

    .line 266
    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "fdesc":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->formatType(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object v1

    return-object v1
.end method

.method private static getColor(Ljava/util/regex/Matcher;)Ljava/awt/Color;
    .locals 5
    .param p0, "m"    # Ljava/util/regex/Matcher;

    .line 232
    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_GROUP:I

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "cdesc":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Color;

    .line 236
    .local v1, "c":Ljava/awt/Color;
    if-nez v1, :cond_1

    .line 237
    sget-object v2, Lorg/apache/poi/ss/format/CellFormatter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 238
    :cond_1
    return-object v1

    .line 234
    .end local v1    # "c":Ljava/awt/Color;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getCondition(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatCondition;
    .locals 3
    .param p1, "m"    # Ljava/util/regex/Matcher;

    .line 250
    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_OPERATOR_GROUP:I

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "mdesc":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    sget v1, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_OPERATOR_GROUP:I

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_VALUE_GROUP:I

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatCondition;

    move-result-object v1

    return-object v1

    .line 252
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFormatter(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatter;
    .locals 2
    .param p1, "matcher"    # Ljava/util/regex/Matcher;

    .line 279
    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "fdesc":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/format/CellFormatType;->formatter(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatter;

    move-result-object v1

    return-object v1
.end method

.method public static group(Ljava/util/regex/Matcher;I)Ljava/lang/String;
    .locals 2
    .param p0, "m"    # Ljava/util/regex/Matcher;
    .param p1, "g"    # I

    .line 523
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;
    .locals 7
    .param p0, "fdesc"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p2, "partHandler"    # Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;

    .line 448
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 449
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 450
    .local v1, "fmt":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 451
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->group(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "part":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 453
    invoke-interface {p2, v0, v3, p1, v1}, Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;->handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "repl":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 455
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x22

    const/4 v6, 0x1

    if-eq v2, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_2

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_1

    const/16 v5, 0x5f

    if-eq v2, v5, :cond_0

    .line 470
    move-object v4, v3

    goto :goto_1

    .line 464
    :cond_0
    const-string v4, " "

    .line 465
    goto :goto_1

    .line 461
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->quoteSpecial(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;)Ljava/lang/String;

    move-result-object v4

    .line 462
    goto :goto_1

    .line 467
    :cond_2
    invoke-static {v3}, Lorg/apache/poi/ss/format/CellFormatPart;->expandChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 468
    goto :goto_1

    .line 457
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->quoteSpecial(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;)Ljava/lang/String;

    move-result-object v4

    .line 474
    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 476
    .end local v3    # "part":Ljava/lang/String;
    .end local v4    # "repl":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 477
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 479
    const/16 v2, 0x27

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 481
    const/4 v2, 0x0

    .line 482
    .local v2, "pos":I
    :goto_2
    const-string v3, "\'\'"

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    if-ltz v4, :cond_7

    .line 483
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 487
    :cond_7
    const/4 v2, 0x0

    .line 488
    :goto_3
    const-string v4, "\u0000"

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    if-ltz v4, :cond_8

    .line 489
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 493
    .end local v2    # "pos":I
    :cond_8
    return-object v1
.end method

.method static quoteSpecial(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;)Ljava/lang/String;
    .locals 5
    .param p0, "repl"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/apache/poi/ss/format/CellFormatType;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 354
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 355
    .local v2, "ch":C
    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    goto :goto_1

    .line 360
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result v3

    .line 361
    .local v3, "special":Z
    const-string v4, "\'"

    if-eqz v3, :cond_1

    .line 362
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    if-eqz v3, :cond_2

    .line 365
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .end local v2    # "ch":C
    .end local v3    # "special":Z
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public applies(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "valueObject"    # Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    if-eqz v0, :cond_1

    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    .line 192
    .local v1, "num":Ljava/lang/Number;
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/ss/format/CellFormatCondition;->pass(D)Z

    move-result v0

    return v0

    .line 187
    .end local v1    # "num":Ljava/lang/Number;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 189
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "valueObject"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 380
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result v0

    .line 383
    .local v0, "applies":Z
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/format/CellFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormatPart;->color:Ljava/awt/Color;

    .local v2, "textColor":Ljava/awt/Color;
    goto :goto_0

    .line 387
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "textColor":Ljava/awt/Color;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/format/CellFormatter;->simpleFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .restart local v1    # "text":Ljava/lang/String;
    const/4 v2, 0x0

    .line 390
    .restart local v2    # "textColor":Ljava/awt/Color;
    :goto_0
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatResult;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatResult;-><init>(ZLjava/lang/String;Ljava/awt/Color;)V

    return-object v3
.end method

.method public apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 2
    .param p1, "label"    # Ljavax/swing/JLabel;
    .param p2, "value"    # Ljava/lang/Object;

    .line 403
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v0

    .line 404
    .local v0, "result":Lorg/apache/poi/ss/format/CellFormatResult;
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 405
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    invoke-virtual {p1, v1}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    .line 408
    :cond_0
    return-object v0
.end method

.method getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v0
.end method

.method hasCondition()Z
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
