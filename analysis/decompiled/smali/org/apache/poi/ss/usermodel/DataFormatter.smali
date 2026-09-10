.class public Lorg/apache/poi/ss/usermodel/DataFormatter;
.super Ljava/lang/Object;
.source "DataFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;
    }
.end annotation


# static fields
.field private static final amPmPattern:Ljava/util/regex/Pattern;

.field private static final colorPattern:Ljava/util/regex/Pattern;

.field private static final daysAsText:Ljava/util/regex/Pattern;

.field private static final defaultFractionFractionPartFormat:Ljava/lang/String; = "#/##"

.field private static final defaultFractionWholePartFormat:Ljava/lang/String; = "#"

.field private static final fractionPattern:Ljava/util/regex/Pattern;

.field private static final fractionStripper:Ljava/util/regex/Pattern;

.field private static final invalidDateTimeString:Ljava/lang/String;

.field private static final localePatternGroup:Ljava/util/regex/Pattern;

.field private static final numPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final dateSymbols:Ljava/text/DateFormatSymbols;

.field private final decimalSymbols:Ljava/text/DecimalFormatSymbols;

.field private defaultNumFormat:Ljava/text/Format;

.field private emulateCsv:Z

.field private final formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final generalDecimalNumFormat:Ljava/text/Format;

.field private final generalWholeNumFormat:Ljava/text/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 104
    const-string v2, "[0#]+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    .line 107
    const-string v2, "([d]{3,})"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    .line 110
    const-string v2, "((A|P)[M/P]*)"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    .line 116
    const-string v2, "(\\[\\$[^-\\]]*-[0-9A-Z]+\\])"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    .line 123
    const-string v2, "(\\[BLACK\\])|(\\[BLUE\\])|(\\[CYAN\\])|(\\[GREEN\\])|(\\[MAGENTA\\])|(\\[RED\\])|(\\[WHITE\\])|(\\[YELLOW\\])|(\\[COLOR\\s*\\d\\])|(\\[COLOR\\s*[0-5]\\d\\])"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    .line 132
    const-string v2, "(?:([#\\d]+)\\s+)?(#+)\\s*\\/\\s*([#\\d]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    .line 137
    const-string v2, "(\"[^\"]*\")|([^ \\?#\\d\\/]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Z)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    .line 208
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3, p1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    .line 209
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    .line 210
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#"

    iget-object v5, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3, v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    .line 211
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##########"

    iget-object v5, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v3, v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    .line 213
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    .line 217
    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->instance:Ljava/text/Format;

    .line 218
    .local v2, "zipFormat":Ljava/text/Format;
    const-string v3, "00000\\-0000"

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 219
    const-string v3, "00000-0000"

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 221
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->instance:Ljava/text/Format;

    .line 223
    .local v0, "phoneFormat":Ljava/text/Format;
    const-string v3, "[<=9999999]###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, v3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 224
    const-string v3, "[<=9999999]###-####;(###) ###-####"

    invoke-virtual {p0, v3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 225
    const-string v3, "###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, v3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 226
    const-string v3, "###-####;(###) ###-####"

    invoke-virtual {p0, v3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 228
    sget-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;->instance:Ljava/text/Format;

    .line 229
    .local v1, "ssnFormat":Ljava/text/Format;
    const-string v3, "000\\-00\\-0000"

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 230
    const-string v3, "000-00-0000"

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "emulateCsv"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    .line 201
    iput-boolean p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    .line 202
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "emulateCsv"    # Z

    .prologue
    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;)V

    .line 191
    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    .line 192
    return-void
.end method

.method private cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "formatStr"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x2a

    const/16 v6, 0x20

    const/16 v4, 0x5f

    const/16 v5, 0x5c

    .line 558
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 560
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-boolean v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    if-eqz v3, :cond_5

    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 566
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 567
    .local v0, "c":C
    if-eq v0, v4, :cond_0

    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_1

    .line 568
    :cond_0
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 565
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_2
    if-ne v0, v8, :cond_3

    .line 573
    invoke-virtual {v2, v1, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    .line 574
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 578
    if-ne v0, v4, :cond_4

    .line 579
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 584
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 585
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 581
    :cond_4
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 594
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 595
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 596
    .restart local v0    # "c":C
    if-eq v0, v4, :cond_6

    if-ne v0, v7, :cond_7

    .line 597
    :cond_6
    if-lez v1, :cond_8

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_8

    .line 594
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 601
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_9

    .line 605
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 608
    :cond_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 609
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 616
    .end local v0    # "c":C
    :cond_a
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 617
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 619
    .restart local v0    # "c":C
    if-eq v0, v5, :cond_b

    const/16 v3, 0x22

    if-ne v0, v3, :cond_d

    .line 620
    :cond_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 621
    add-int/lit8 v1, v1, -0x1

    .line 616
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 624
    :cond_d
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_c

    if-lez v1, :cond_c

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x45

    if-ne v3, v4, :cond_c

    .line 625
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 626
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 630
    .end local v0    # "c":C
    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private createDateFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 22
    .param p1, "pFormatStr"    # Ljava/lang/String;
    .param p2, "cellValue"    # D

    .prologue
    .line 416
    move-object/from16 v7, p1

    .line 417
    .local v7, "formatStr":Ljava/lang/String;
    const-string v18, "\\\\-"

    const-string v19, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    const-string v18, "\\\\,"

    const-string v19, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 419
    const-string v18, "\\\\\\."

    const-string v19, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 420
    const-string v18, "\\\\ "

    const-string v19, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 421
    const-string v18, "\\\\/"

    const-string v19, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 422
    const-string v18, ";@"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 423
    const-string v18, "\"/\""

    const-string v19, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 424
    const-string v18, "\"\""

    const-string v19, "\'"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 425
    const-string v18, "\\\\T"

    const-string v19, "\'T\'"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 428
    const/4 v8, 0x0

    .line 429
    .local v8, "hasAmPm":Z
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 430
    .local v3, "amPmMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 431
    const-string v18, "@"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 432
    const/4 v8, 0x1

    .line 433
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    .line 435
    :cond_0
    const-string v18, "@"

    const-string v19, "a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 438
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 439
    .local v6, "dateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 440
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 441
    .local v15, "match":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "D"

    const-string v20, "E"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 453
    .end local v15    # "match":Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 454
    .local v17, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 455
    .local v5, "chars":[C
    const/4 v14, 0x1

    .line 456
    .local v14, "mIsMonth":Z
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v16, "ms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .line 458
    .local v12, "isElapsed":Z
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_1d

    .line 459
    aget-char v4, v5, v13

    .line 460
    .local v4, "c":C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    .line 461
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 462
    add-int/lit8 v13, v13, 0x1

    .line 465
    :goto_2
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    .line 466
    aget-char v4, v5, v13

    .line 467
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v4, v0, :cond_3

    .line 458
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 471
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 474
    :cond_4
    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v4, v0, :cond_5

    if-nez v12, :cond_5

    .line 475
    const/4 v12, 0x1

    .line 476
    const/4 v14, 0x0

    .line 477
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 479
    :cond_5
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    if-eqz v12, :cond_6

    .line 480
    const/4 v12, 0x0

    .line 481
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 483
    :cond_6
    if-eqz v12, :cond_d

    .line 484
    const/16 v18, 0x68

    move/from16 v0, v18

    if-eq v4, v0, :cond_7

    const/16 v18, 0x48

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    .line 485
    :cond_7
    const/16 v18, 0x48

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 487
    :cond_8
    const/16 v18, 0x6d

    move/from16 v0, v18

    if-eq v4, v0, :cond_9

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    .line 488
    :cond_9
    const/16 v18, 0x6d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 490
    :cond_a
    const/16 v18, 0x73

    move/from16 v0, v18

    if-eq v4, v0, :cond_b

    const/16 v18, 0x53

    move/from16 v0, v18

    if-ne v4, v0, :cond_c

    .line 491
    :cond_b
    const/16 v18, 0x73

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 494
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 497
    :cond_d
    const/16 v18, 0x68

    move/from16 v0, v18

    if-eq v4, v0, :cond_e

    const/16 v18, 0x48

    move/from16 v0, v18

    if-ne v4, v0, :cond_10

    .line 498
    :cond_e
    const/4 v14, 0x0

    .line 499
    if-eqz v8, :cond_f

    .line 500
    const/16 v18, 0x68

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 502
    :cond_f
    const/16 v18, 0x48

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 505
    :cond_10
    const/16 v18, 0x6d

    move/from16 v0, v18

    if-eq v4, v0, :cond_11

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v4, v0, :cond_13

    .line 506
    :cond_11
    if-eqz v14, :cond_12

    .line 507
    const/16 v18, 0x4d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 512
    :cond_12
    const/16 v18, 0x6d

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 515
    :cond_13
    const/16 v18, 0x73

    move/from16 v0, v18

    if-eq v4, v0, :cond_14

    const/16 v18, 0x53

    move/from16 v0, v18

    if-ne v4, v0, :cond_17

    .line 516
    :cond_14
    const/16 v18, 0x73

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 518
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_16

    .line 519
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 520
    .local v11, "index":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v18

    const/16 v19, 0x4d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 521
    add-int/lit8 v18, v11, 0x1

    const-string v19, "m"

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 524
    .end local v11    # "index":I
    :cond_16
    const/4 v14, 0x1

    .line 525
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    goto/16 :goto_3

    .line 527
    .end local v9    # "i":I
    :cond_17
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 528
    const/4 v14, 0x1

    .line 529
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 530
    const/16 v18, 0x79

    move/from16 v0, v18

    if-eq v4, v0, :cond_18

    const/16 v18, 0x59

    move/from16 v0, v18

    if-ne v4, v0, :cond_19

    .line 531
    :cond_18
    const/16 v18, 0x79

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 533
    :cond_19
    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v4, v0, :cond_1a

    const/16 v18, 0x44

    move/from16 v0, v18

    if-ne v4, v0, :cond_1b

    .line 534
    :cond_1a
    const/16 v18, 0x64

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 537
    :cond_1b
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 541
    :cond_1c
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 544
    .end local v4    # "c":C
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 547
    :try_start_0
    new-instance v18, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_5
    return-object v18

    .line 548
    :catch_0
    move-exception v10

    .line 552
    .local v10, "iae":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v18

    goto :goto_5
.end method

.method private createFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 21
    .param p1, "cellValue"    # D
    .param p3, "formatIndex"    # I
    .param p4, "sFormat"    # Ljava/lang/String;

    .prologue
    .line 329
    move-object/from16 v8, p4

    .line 332
    .local v8, "formatStr":Ljava/lang/String;
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 333
    .local v7, "colourM":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 334
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "colour":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 338
    .local v3, "at":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_2

    .line 349
    .end local v3    # "at":I
    .end local v6    # "colour":Ljava/lang/String;
    :cond_0
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 350
    .local v11, "m":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 351
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 352
    .local v12, "match":Ljava/lang/String;
    const/16 v18, 0x24

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    const/16 v19, 0x2d

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 353
    .local v16, "symbol":Ljava/lang/String;
    const/16 v18, 0x24

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 354
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .local v15, "sb":Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    const/16 v19, 0x24

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    const/16 v18, 0x24

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 360
    .end local v15    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 361
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 362
    goto/16 :goto_1

    .line 339
    .end local v11    # "m":Ljava/util/regex/Matcher;
    .end local v12    # "match":Ljava/lang/String;
    .end local v16    # "symbol":Ljava/lang/String;
    .restart local v3    # "at":I
    .restart local v6    # "colour":Ljava/lang/String;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v3

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 341
    .local v14, "nFormatStr":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 344
    move-object v8, v14

    .line 345
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 346
    goto/16 :goto_0

    .line 365
    .end local v3    # "at":I
    .end local v6    # "colour":Ljava/lang/String;
    .end local v14    # "nFormatStr":Ljava/lang/String;
    .restart local v11    # "m":Ljava/util/regex/Matcher;
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_5

    .line 366
    :cond_4
    invoke-direct/range {p0 .. p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v18

    .line 410
    :goto_2
    return-object v18

    .line 369
    :cond_5
    const-string v18, "General"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "@"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 370
    :cond_6
    invoke-static/range {p1 .. p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->isWholeNumber(D)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    move-object/from16 v18, v0

    goto :goto_2

    .line 373
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    move-object/from16 v18, v0

    goto :goto_2

    .line 376
    :cond_8
    move/from16 v0, p3

    invoke-static {v0, v8}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static/range {p1 .. p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 378
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v8, v1, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createDateFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object v18

    goto :goto_2

    .line 381
    :cond_9
    const-string v18, "#/"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-gez v18, :cond_a

    const-string v18, "?/"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_e

    .line 382
    :cond_a
    const-string v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "chunks":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 384
    aget-object v18, v5, v10

    const-string v19, "\\?"

    const-string v20, "#"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "chunk":Ljava/lang/String;
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 386
    .local v13, "matcher":Ljava/util/regex/Matcher;
    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    const-string v18, " +"

    const-string v19, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 390
    .local v9, "fractionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 391
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    const-string v17, ""

    .line 392
    .local v17, "wholePart":Ljava/lang/String;
    :goto_4
    new-instance v18, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 391
    .end local v17    # "wholePart":Ljava/lang/String;
    :cond_b
    const-string v17, "#"

    goto :goto_4

    .line 383
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 399
    .end local v4    # "chunk":Ljava/lang/String;
    .end local v9    # "fractionMatcher":Ljava/util/regex/Matcher;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_d
    new-instance v18, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const-string v19, "#"

    const-string v20, "#/##"

    invoke-direct/range {v18 .. v20}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 402
    .end local v5    # "chunks":[Ljava/lang/String;
    .end local v10    # "i":I
    :cond_e
    sget-object v18, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 403
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v8, v1, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object v18

    goto/16 :goto_2

    .line 406
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 407
    new-instance v18, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 410
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method static createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2
    .param p0, "fmt"    # Ljava/lang/String;

    .prologue
    .line 890
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, "result":Ljava/text/DecimalFormat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 892
    return-object v0
.end method

.method private createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 4
    .param p1, "formatStr"    # Ljava/lang/String;
    .param p2, "cellValue"    # D

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "format":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 638
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :goto_0
    return-object v0

    .line 640
    :catch_0
    move-exception v2

    .line 644
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultFormat(D)Ljava/text/Format;
    .locals 1
    .param p1, "cellValue"    # D

    .prologue
    .line 667
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    .line 675
    :goto_0
    return-object v0

    .line 672
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->isWholeNumber(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    goto :goto_0
.end method

.method private getFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 11
    .param p1, "cellValue"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatStrIn"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/16 v7, 0x3b

    const-wide/16 v8, 0x0

    .line 266
    move-object v3, p4

    .line 269
    .local v3, "formatStr":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 270
    .local v0, "firstAt":I
    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 272
    .local v4, "lastAt":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    if-eq v0, v4, :cond_0

    .line 273
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 274
    .local v5, "secondAt":I
    if-ne v5, v4, :cond_3

    .line 275
    cmpl-double v6, p1, v8

    if-nez v6, :cond_2

    .line 276
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    .end local v5    # "secondAt":I
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    if-eqz v6, :cond_1

    cmpl-double v6, p1, v8

    if-nez v6, :cond_1

    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 291
    const-string v6, "#"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    :cond_1
    iget-object v6, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    .line 296
    .local v1, "format":Ljava/text/Format;
    if-eqz v1, :cond_5

    move-object v2, v1

    .end local v1    # "format":Ljava/text/Format;
    .local v2, "format":Ljava/text/Format;
    move-object v6, v1

    .line 311
    :goto_1
    return-object v6

    .line 278
    .end local v2    # "format":Ljava/text/Format;
    .restart local v5    # "secondAt":I
    :cond_2
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 281
    :cond_3
    cmpl-double v6, p1, v8

    if-nez v6, :cond_4

    .line 282
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 301
    .end local v5    # "secondAt":I
    .restart local v1    # "format":Ljava/text/Format;
    :cond_5
    const-string v6, "General"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "@"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 302
    :cond_6
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->isWholeNumber(D)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 303
    iget-object v6, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    move-object v2, v1

    .end local v1    # "format":Ljava/text/Format;
    .restart local v2    # "format":Ljava/text/Format;
    goto :goto_1

    .line 305
    .end local v2    # "format":Ljava/text/Format;
    .restart local v1    # "format":Ljava/text/Format;
    :cond_7
    iget-object v6, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    move-object v2, v1

    .end local v1    # "format":Ljava/text/Format;
    .restart local v2    # "format":Ljava/text/Format;
    goto :goto_1

    .line 309
    .end local v2    # "format":Ljava/text/Format;
    .restart local v1    # "format":Ljava/text/Format;
    :cond_8
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v1

    .line 310
    iget-object v6, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .end local v1    # "format":Ljava/text/Format;
    .restart local v2    # "format":Ljava/text/Format;
    move-object v6, v1

    .line 311
    goto :goto_1
.end method

.method private getFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-object v2

    .line 251
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v0

    .line 252
    .local v0, "formatIndex":I
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "formatStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v2

    goto :goto_0
.end method

.method private getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 6
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;

    move-result-object v1

    .line 699
    .local v1, "dateFormat":Ljava/text/Format;
    instance-of v2, v1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 701
    check-cast v2, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    .line 705
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object v0

    .line 706
    .local v0, "d":Ljava/util/Date;
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;

    move-result-object v2

    .line 721
    .local v2, "numberFormat":Ljava/text/Format;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    .line 722
    .local v0, "d":D
    if-nez v2, :cond_0

    .line 723
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 725
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static isWholeNumber(D)Z
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 654
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;
    .locals 1
    .param p1, "d"    # Ljava/util/Date;
    .param p2, "dateFormat"    # Ljava/text/Format;

    .prologue
    .line 683
    if-eqz p2, :cond_0

    .line 684
    invoke-virtual {p2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 686
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V
    .locals 1
    .param p0, "format"    # Ljava/text/DecimalFormat;

    .prologue
    .line 900
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 901
    return-void
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V
    .locals 0
    .param p0, "format"    # Ljava/text/DecimalFormat;
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 909
    invoke-virtual {p0, p1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 910
    return-void
.end method


# virtual methods
.method public addFormat(Ljava/lang/String;Ljava/text/Format;)V
    .locals 1
    .param p1, "excelFormatStr"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/text/Format;

    .prologue
    .line 881
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    return-void
.end method

.method public createFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 323
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v0

    .line 324
    .local v0, "formatIndex":I
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "formatStr":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v2

    return-object v2
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 1
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "evaluator"    # Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .prologue
    .line 807
    if-nez p1, :cond_0

    .line 808
    const-string v1, ""

    .line 834
    :goto_0
    return-object v1

    .line 811
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v0

    .line 812
    .local v0, "cellType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 813
    if-nez p2, :cond_1

    .line 814
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 816
    :cond_1
    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I

    move-result v0

    .line 818
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 836
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected celltype ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :pswitch_1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 822
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 824
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 827
    :pswitch_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 830
    :pswitch_3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 832
    :pswitch_4
    const-string v1, ""

    goto :goto_0

    .line 834
    :pswitch_5
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatString"    # Ljava/lang/String;

    .prologue
    .line 734
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatString"    # Ljava/lang/String;
    .param p5, "use1904Windowing"    # Z

    .prologue
    .line 743
    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 744
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 745
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v1

    .line 746
    .local v1, "dateFormat":Ljava/text/Format;
    instance-of v4, v1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 748
    check-cast v4, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-virtual {v4, p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    .line 750
    :cond_0
    invoke-static {p1, p2, p5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v0

    .line 751
    .local v0, "d":Ljava/util/Date;
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v3

    .line 768
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/Format;
    :cond_1
    :goto_0
    return-object v3

    .line 754
    :cond_2
    iget-boolean v4, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    if-eqz v4, :cond_3

    .line 755
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    goto :goto_0

    .line 759
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v2

    .line 760
    .local v2, "numberFormat":Ljava/text/Format;
    if-nez v2, :cond_4

    .line 761
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 764
    :cond_4
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "result":Ljava/lang/String;
    const-string v4, "E"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "E-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 766
    const-string v4, "E"

    const-string v5, "E+"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getDefaultFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 663
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultNumberFormat(Ljava/text/Format;)V
    .locals 4
    .param p1, "format"    # Ljava/text/Format;

    .prologue
    .line 858
    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 859
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/text/Format;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 860
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 861
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/text/Format;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    if-ne v2, v3, :cond_0

    .line 863
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 866
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/text/Format;>;"
    :cond_2
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    .line 867
    return-void
.end method
