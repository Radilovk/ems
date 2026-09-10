.class public Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;
.super Ljava/text/SimpleDateFormat;
.source "ExcelStyleDateFormatter.java"


# static fields
.field public static final HH_BRACKET_SYMBOL:C = '\ue011'

.field public static final H_BRACKET_SYMBOL:C = '\ue010'

.field public static final LL_BRACKET_SYMBOL:C = '\ue017'

.field public static final L_BRACKET_SYMBOL:C = '\ue016'

.field public static final MMMMM_START_SYMBOL:C = '\ue001'

.field public static final MMMMM_TRUNCATE_SYMBOL:C = '\ue002'

.field public static final MM_BRACKET_SYMBOL:C = '\ue013'

.field public static final M_BRACKET_SYMBOL:C = '\ue012'

.field public static final SS_BRACKET_SYMBOL:C = '\ue015'

.field public static final S_BRACKET_SYMBOL:C = '\ue014'


# instance fields
.field private dateToBeFormatted:D

.field private format1digit:Ljava/text/DecimalFormat;

.field private format2digits:Ljava/text/DecimalFormat;

.field private format3digit:Ljava/text/DecimalFormat;

.field private format4digits:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    .line 44
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    .line 50
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 51
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 52
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 53
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->processFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    .line 44
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    .line 50
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 51
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 52
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 53
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    .line 68
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->processFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    .line 44
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    .line 50
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 51
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 52
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 53
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 72
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->processFormatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    .line 44
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    .line 50
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 51
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    .line 52
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 53
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    .line 73
    return-void
.end method

.method private static processFormatPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "f"    # Ljava/lang/String;

    .line 80
    const-string v0, "MMMMM"

    const-string v1, "\ue001MMM\ue002"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "t":Ljava/lang/String;
    const v1, 0xe010

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\[H\\]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const v1, 0xe011

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\[HH\\]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const v1, 0xe012

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\[m\\]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const v1, 0xe013

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\[mm\\]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const v1, 0xe014

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\[s\\]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const v1, 0xe015

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\[ss\\]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "s.000"

    const-string v2, "s.SSS"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "s.00"

    const-string v2, "s.\ue017"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "s.0"

    const-string v2, "s.\ue016"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 12
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "paramStringBuffer"    # Ljava/lang/StringBuffer;
    .param p3, "paramFieldPosition"    # Ljava/text/FieldPosition;

    .line 107
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "s":Ljava/lang/String;
    const v1, 0xe001

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 111
    const-string v1, "\ue001(\\w)\\w+\ue002"

    const-string v3, "$1"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    const v1, 0xe010

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const v4, 0xe011

    const/high16 v5, 0x41c00000    # 24.0f

    if-ne v3, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 119
    :cond_1
    iget-wide v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    double-to-float v3, v6

    mul-float v3, v3, v5

    .line 121
    .local v3, "hours":F
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    float-to-double v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .end local v3    # "hours":F
    :cond_2
    const v1, 0xe012

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const v4, 0xe013

    if-ne v3, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 133
    :cond_3
    iget-wide v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    double-to-float v3, v6

    mul-float v3, v3, v5

    const/high16 v5, 0x42700000    # 60.0f

    mul-float v3, v3, v5

    .line 134
    .local v3, "minutes":F
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    float-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .end local v3    # "minutes":F
    :cond_4
    const v1, 0xe014

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const v4, 0xe015

    const-wide/high16 v5, 0x4038000000000000L    # 24.0

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    if-ne v3, v2, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 145
    :cond_5
    iget-wide v9, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    mul-double v9, v9, v5

    mul-double v9, v9, v7

    mul-double v9, v9, v7

    double-to-float v3, v9

    .line 146
    .local v3, "seconds":F
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    float-to-double v9, v3

    invoke-virtual {v4, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .end local v3    # "seconds":F
    :cond_6
    const v1, 0xe016

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const v4, 0xe017

    if-ne v3, v2, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_8

    .line 158
    :cond_7
    iget-wide v2, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    sub-double/2addr v2, v9

    mul-double v2, v2, v5

    mul-double v2, v2, v7

    mul-double v2, v2, v7

    double-to-float v2, v2

    .line 159
    .local v2, "millisTemp":F
    float-to-int v3, v2

    int-to-float v3, v3

    sub-float v3, v2, v3

    .line 160
    .local v3, "millis":F
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v6, v6, v3

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v3

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .end local v2    # "millisTemp":F
    .end local v3    # "millis":F
    :cond_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public setDateToBeFormatted(D)V
    .locals 0
    .param p1, "date"    # D

    .line 100
    iput-wide p1, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    .line 101
    return-void
.end method
