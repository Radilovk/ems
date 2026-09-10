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
            "Ljava/util/Map<",
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
    .locals 3

    .line 104
    const-string v0, "[0#]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "([d]{3,})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    .line 110
    const-string v0, "((A|P)[M/P]*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    .line 116
    const-string v0, "(\\[\\$[^-\\]]*-[0-9A-Z]+\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    .line 123
    const-string v0, "(\\[BLACK\\])|(\\[BLUE\\])|(\\[CYAN\\])|(\\[GREEN\\])|(\\[MAGENTA\\])|(\\[RED\\])|(\\[WHITE\\])|(\\[YELLOW\\])|(\\[COLOR\\s*\\d\\])|(\\[COLOR\\s*[0-5]\\d\\])"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    .line 132
    const-string v0, "(?:([#\\d]+)\\s+)?(#+)\\s*\\/\\s*([#\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    .line 137
    const-string v0, "(\"[^\"]*\")|([^ \\?#\\d\\/]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

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
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    .line 148
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Z)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    .line 208
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    .line 209
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    .line 210
    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    const-string v2, "#"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    .line 211
    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    const-string v2, "#.##########"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    .line 217
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->instance:Ljava/text/Format;

    .line 218
    .local v0, "zipFormat":Ljava/text/Format;
    const-string v1, "00000\\-0000"

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 219
    const-string v1, "00000-0000"

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 221
    sget-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->instance:Ljava/text/Format;

    .line 223
    .local v1, "phoneFormat":Ljava/text/Format;
    const-string v2, "[<=9999999]###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 224
    const-string v2, "[<=9999999]###-####;(###) ###-####"

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 225
    const-string v2, "###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 226
    const-string v2, "###-####;(###) ###-####"

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 228
    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;->instance:Ljava/text/Format;

    .line 229
    .local v2, "ssnFormat":Ljava/text/Format;
    const-string v3, "000\\-00\\-0000"

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 230
    const-string v3, "000-00-0000"

    invoke-virtual {p0, v3, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "emulateCsv"    # Z

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
    .locals 8
    .param p1, "formatStr"    # Ljava/lang/String;

    .line 558
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 560
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    const/16 v2, 0x2a

    const/16 v3, 0x5c

    const/16 v4, 0x5f

    if-eqz v1, :cond_6

    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 567
    .local v5, "c":C
    const/16 v6, 0x3f

    if-eq v5, v4, :cond_0

    if-eq v5, v2, :cond_0

    if-ne v5, v6, :cond_4

    .line 568
    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v3, :cond_1

    .line 570
    goto :goto_2

    .line 572
    :cond_1
    const/16 v7, 0x20

    if-ne v5, v6, :cond_2

    .line 573
    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    .line 574
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 578
    if-ne v5, v4, :cond_3

    .line 579
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    .line 581
    :cond_3
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 584
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 585
    add-int/lit8 v1, v1, -0x1

    .line 565
    .end local v5    # "c":C
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_5
    goto :goto_5

    .line 594
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v1, v5, :cond_b

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 596
    .restart local v5    # "c":C
    if-eq v5, v4, :cond_7

    if-ne v5, v2, :cond_a

    .line 597
    :cond_7
    if-lez v1, :cond_8

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_8

    .line 599
    goto :goto_4

    .line 601
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_9

    .line 605
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 608
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 609
    add-int/lit8 v1, v1, -0x1

    .line 594
    .end local v5    # "c":C
    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 616
    .end local v1    # "i":I
    :cond_b
    :goto_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 619
    .local v2, "c":C
    if-eq v2, v3, :cond_d

    const/16 v4, 0x22

    if-ne v2, v4, :cond_c

    goto :goto_7

    .line 624
    :cond_c
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_e

    if-lez v1, :cond_e

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_e

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 626
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 620
    :cond_d
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 621
    add-int/lit8 v1, v1, -0x1

    .line 616
    .end local v2    # "c":C
    :cond_e
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 630
    .end local v1    # "i":I
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createDateFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 16
    .param p1, "pFormatStr"    # Ljava/lang/String;
    .param p2, "cellValue"    # D

    .line 416
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 417
    .local v0, "formatStr":Ljava/lang/String;
    const-string v2, "\\\\-"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    const-string v2, "\\\\,"

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string v2, "\\\\\\."

    const-string v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    const-string v2, "\\\\ "

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v2, "\\\\/"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    const-string v2, ";@"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v2, "\"/\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    const-string v2, "\"\""

    const-string v3, "\'"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 425
    const-string v2, "\\\\T"

    const-string v3, "\'T\'"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    const/4 v2, 0x0

    .line 429
    .local v2, "hasAmPm":Z
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 430
    .local v3, "amPmMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v5, "@"

    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    const/4 v2, 0x1

    .line 433
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_0

    .line 435
    :cond_0
    const-string v4, "a"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 439
    .local v4, "dateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, "match":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "D"

    const-string v8, "E"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .end local v5    # "match":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 454
    .local v5, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 455
    .local v6, "chars":[C
    const/4 v7, 0x1

    .line 456
    .local v7, "mIsMonth":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v8, "ms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 458
    .local v9, "isElapsed":Z
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    array-length v11, v6

    if-ge v10, v11, :cond_1d

    .line 459
    aget-char v11, v6, v10

    .line 460
    .local v11, "c":C
    const/16 v12, 0x27

    if-ne v11, v12, :cond_3

    .line 461
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 462
    add-int/lit8 v10, v10, 0x1

    .line 465
    :goto_2
    array-length v13, v6

    if-ge v10, v13, :cond_1c

    .line 466
    aget-char v11, v6, v10

    .line 467
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    if-ne v11, v12, :cond_2

    .line 469
    goto/16 :goto_c

    .line 471
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 474
    :cond_3
    const/16 v12, 0x5b

    if-ne v11, v12, :cond_4

    if-nez v9, :cond_4

    .line 475
    const/4 v9, 0x1

    .line 476
    const/4 v7, 0x0

    .line 477
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    .line 479
    :cond_4
    const/16 v12, 0x5d

    if-ne v11, v12, :cond_5

    if-eqz v9, :cond_5

    .line 480
    const/4 v9, 0x0

    .line 481
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    .line 483
    :cond_5
    const/16 v13, 0x68

    const/16 v15, 0x4d

    const/16 v12, 0x6d

    const/16 v14, 0x48

    if-eqz v9, :cond_c

    .line 484
    if-eq v11, v13, :cond_b

    if-ne v11, v14, :cond_6

    goto :goto_5

    .line 487
    :cond_6
    if-eq v11, v12, :cond_a

    if-ne v11, v15, :cond_7

    goto :goto_4

    .line 490
    :cond_7
    const/16 v12, 0x73

    if-eq v11, v12, :cond_9

    const/16 v13, 0x53

    if-ne v11, v13, :cond_8

    goto :goto_3

    .line 494
    :cond_8
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    .line 491
    :cond_9
    :goto_3
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    .line 488
    :cond_a
    :goto_4
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    .line 485
    :cond_b
    :goto_5
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    .line 497
    :cond_c
    if-eq v11, v13, :cond_1a

    if-ne v11, v14, :cond_d

    goto/16 :goto_b

    .line 505
    :cond_d
    if-eq v11, v12, :cond_18

    if-ne v11, v15, :cond_e

    goto/16 :goto_a

    .line 515
    :cond_e
    const/16 v12, 0x73

    if-eq v11, v12, :cond_15

    const/16 v12, 0x53

    if-ne v11, v12, :cond_f

    goto :goto_8

    .line 527
    :cond_f
    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 528
    const/4 v7, 0x1

    .line 529
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 530
    const/16 v12, 0x79

    if-eq v11, v12, :cond_13

    const/16 v13, 0x59

    if-ne v11, v13, :cond_10

    goto :goto_7

    .line 533
    :cond_10
    const/16 v12, 0x64

    if-eq v11, v12, :cond_12

    const/16 v13, 0x44

    if-ne v11, v13, :cond_11

    goto :goto_6

    .line 537
    :cond_11
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 534
    :cond_12
    :goto_6
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 531
    :cond_13
    :goto_7
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 541
    :cond_14
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 516
    :cond_15
    :goto_8
    const/16 v12, 0x73

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 518
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_17

    .line 519
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 520
    .local v13, "index":I
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    if-ne v14, v15, :cond_16

    .line 521
    add-int/lit8 v14, v13, 0x1

    const-string v15, "m"

    invoke-virtual {v5, v13, v14, v15}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    .end local v13    # "index":I
    :cond_16
    add-int/lit8 v12, v12, 0x1

    const/16 v15, 0x4d

    goto :goto_9

    .line 524
    .end local v12    # "i":I
    :cond_17
    const/4 v7, 0x1

    .line 525
    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_c

    .line 506
    :cond_18
    :goto_a
    if-eqz v7, :cond_19

    .line 507
    const/16 v12, 0x4d

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 508
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 512
    :cond_19
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 498
    :cond_1a
    :goto_b
    const/4 v7, 0x0

    .line 499
    if-eqz v2, :cond_1b

    .line 500
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 502
    :cond_1b
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 458
    .end local v11    # "c":C
    :cond_1c
    :goto_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 544
    .end local v10    # "j":I
    :cond_1d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 547
    .end local v0    # "formatStr":Ljava/lang/String;
    .local v10, "formatStr":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    iget-object v11, v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v10, v11}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 548
    :catch_0
    move-exception v0

    .line 552
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    move-wide/from16 v11, p2

    invoke-direct {v1, v11, v12}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v13

    return-object v13
.end method

.method private createFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 11
    .param p1, "cellValue"    # D
    .param p3, "formatIndex"    # I
    .param p4, "sFormat"    # Ljava/lang/String;

    .line 329
    move-object v0, p4

    .line 332
    .local v0, "formatStr":Ljava/lang/String;
    sget-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 333
    .local v1, "colourM":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "colour":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 338
    .local v5, "at":I
    if-ne v5, v4, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "nFormatStr":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 344
    :cond_1
    move-object v0, v6

    .line 345
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 346
    .end local v2    # "colour":Ljava/lang/String;
    .end local v5    # "at":I
    .end local v6    # "nFormatStr":Ljava/lang/String;
    goto :goto_0

    .line 349
    :cond_2
    :goto_1
    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 350
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 351
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "match":Ljava/lang/String;
    const/16 v7, 0x24

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/2addr v8, v6

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "symbol":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-le v8, v4, :cond_3

    .line 354
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const/16 v9, 0x5c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    sget-object v7, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 362
    .end local v5    # "match":Ljava/lang/String;
    .end local v6    # "symbol":Ljava/lang/String;
    goto :goto_2

    .line 365
    :cond_4
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_6

    .line 369
    :cond_5
    const-string v3, "General"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "@"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_5

    .line 376
    :cond_6
    invoke-static {p3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 378
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createDateFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object v3

    return-object v3

    .line 381
    :cond_7
    const-string v3, "#/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    const-string v3, "?/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    goto :goto_3

    .line 402
    :cond_8
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 403
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object v3

    return-object v3

    .line 406
    :cond_9
    iget-boolean v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    if-eqz v3, :cond_a

    .line 407
    new-instance v3, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 410
    :cond_a
    const/4 v3, 0x0

    return-object v3

    .line 382
    :cond_b
    :goto_3
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "chunks":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v5, v3

    const-string v7, "#"

    if-ge v4, v5, :cond_e

    .line 384
    aget-object v5, v3, v4

    const-string v8, "\\?"

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "chunk":Ljava/lang/String;
    sget-object v8, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 386
    .local v8, "matcher":Ljava/util/regex/Matcher;
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    const-string v10, " +"

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 388
    sget-object v9, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 390
    .local v9, "fractionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 391
    invoke-virtual {v9, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    const-string v7, ""

    :cond_c
    move-object v6, v7

    .line 392
    .local v6, "wholePart":Ljava/lang/String;
    new-instance v7, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v6, v10}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 383
    .end local v5    # "chunk":Ljava/lang/String;
    .end local v6    # "wholePart":Ljava/lang/String;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "fractionMatcher":Ljava/util/regex/Matcher;
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 399
    .end local v4    # "i":I
    :cond_e
    new-instance v4, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const-string v5, "#/##"

    invoke-direct {v4, v7, v5}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 370
    .end local v3    # "chunks":[Ljava/lang/String;
    :cond_f
    :goto_5
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->isWholeNumber(D)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 371
    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    return-object v3

    .line 373
    :cond_10
    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    return-object v3

    .line 366
    :cond_11
    :goto_6
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v3

    return-object v3
.end method

.method static createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2
    .param p0, "fmt"    # Ljava/lang/String;

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
    .locals 3
    .param p1, "formatStr"    # Ljava/lang/String;
    .param p2, "cellValue"    # D

    .line 634
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/text/DecimalFormat;

    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 638
    .local v1, "df":Ljava/text/DecimalFormat;
    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    return-object v1

    .line 640
    .end local v1    # "df":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v1

    .line 644
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v2

    return-object v2
.end method

.method private getDefaultFormat(D)Ljava/text/Format;
    .locals 1
    .param p1, "cellValue"    # D

    .line 667
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    if-eqz v0, :cond_0

    .line 668
    return-object v0

    .line 672
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->isWholeNumber(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    return-object v0

    .line 675
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    return-object v0
.end method

.method private getFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 8
    .param p1, "cellValue"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatStrIn"    # Ljava/lang/String;

    .line 266
    move-object v0, p4

    .line 269
    .local v0, "formatStr":Ljava/lang/String;
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 270
    .local v2, "firstAt":I
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 272
    .local v3, "lastAt":I
    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    if-eq v2, v3, :cond_3

    .line 273
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 274
    .local v1, "secondAt":I
    const/4 v6, 0x0

    if-ne v1, v3, :cond_1

    .line 275
    cmpl-double v7, p1, v4

    if-nez v7, :cond_0

    .line 276
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    cmpl-double v7, p1, v4

    if-nez v7, :cond_2

    .line 282
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 290
    .end local v1    # "secondAt":I
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    if-eqz v1, :cond_4

    cmpl-double v1, p1, v4

    if-nez v1, :cond_4

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 291
    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    .line 296
    .local v1, "format":Ljava/text/Format;
    if-eqz v1, :cond_5

    .line 297
    return-object v1

    .line 301
    :cond_5
    const-string v4, "General"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "@"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 309
    :cond_6
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v1

    .line 310
    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-object v1

    .line 302
    :cond_7
    :goto_1
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->isWholeNumber(D)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 303
    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    return-object v4

    .line 305
    :cond_8
    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    return-object v4
.end method

.method private getFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 5
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 247
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 248
    return-object v1

    .line 251
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v0

    .line 252
    .local v0, "formatIndex":I
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "formatStr":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v3

    invoke-direct {p0, v3, v4, v0, v2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v1

    return-object v1

    .line 254
    :cond_2
    :goto_0
    return-object v1
.end method

.method private getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 698
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;

    move-result-object v0

    .line 699
    .local v0, "dateFormat":Ljava/text/Format;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz v1, :cond_0

    .line 701
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    .line 705
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    .line 706
    .local v1, "d":Ljava/util/Date;
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 720
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;

    move-result-object v0

    .line 721
    .local v0, "numberFormat":Ljava/text/Format;
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    .line 722
    .local v1, "d":D
    if-nez v0, :cond_0

    .line 723
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 725
    :cond_0
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isWholeNumber(D)Z
    .locals 3
    .param p0, "d"    # D

    .line 654
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;
    .locals 1
    .param p1, "d"    # Ljava/util/Date;
    .param p2, "dateFormat"    # Ljava/text/Format;

    .line 683
    if-eqz p2, :cond_0

    .line 684
    invoke-virtual {p2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 686
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V
    .locals 1
    .param p0, "format"    # Ljava/text/DecimalFormat;

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

    .line 881
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    return-void
.end method

.method public createFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 4
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 323
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v0

    .line 324
    .local v0, "formatIndex":I
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

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

    .line 807
    const-string v0, ""

    if-nez p1, :cond_0

    .line 808
    return-object v0

    .line 811
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v1

    .line 812
    .local v1, "cellType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 813
    if-nez p2, :cond_1

    .line 814
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 816
    :cond_1
    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I

    move-result v1

    .line 818
    :cond_2
    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4

    const/4 v0, 0x5

    if-ne v1, v0, :cond_3

    .line 834
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 836
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected celltype ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 832
    :cond_5
    return-object v0

    .line 827
    :cond_6
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 821
    :cond_7
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 822
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 824
    :cond_8
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatString"    # Ljava/lang/String;

    .line 734
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # D
    .param p3, "formatIndex"    # I
    .param p4, "formatString"    # Ljava/lang/String;
    .param p5, "use1904Windowing"    # Z

    .line 743
    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v0

    .line 746
    .local v0, "dateFormat":Ljava/text/Format;
    instance-of v1, v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz v1, :cond_0

    .line 748
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    .line 750
    :cond_0
    invoke-static {p1, p2, p5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v1

    .line 751
    .local v1, "d":Ljava/util/Date;
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 754
    .end local v0    # "dateFormat":Ljava/text/Format;
    .end local v1    # "d":Ljava/util/Date;
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCsv:Z

    if-eqz v0, :cond_2

    .line 755
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    return-object v0

    .line 759
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object v0

    .line 760
    .local v0, "numberFormat":Ljava/text/Format;
    if-nez v0, :cond_3

    .line 761
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 764
    :cond_3
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "result":Ljava/lang/String;
    const-string v2, "E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "E-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 766
    const-string v3, "E+"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    :cond_4
    return-object v1
.end method

.method public getDefaultFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 2
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

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

    .line 858
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 859
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/text/Format;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 860
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 861
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/text/Format;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalDecimalNumFormat:Ljava/text/Format;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalWholeNumFormat:Ljava/text/Format;

    if-ne v2, v3, :cond_1

    .line 863
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/text/Format;>;"
    :cond_1
    goto :goto_0

    .line 866
    :cond_2
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    .line 867
    return-void
.end method
