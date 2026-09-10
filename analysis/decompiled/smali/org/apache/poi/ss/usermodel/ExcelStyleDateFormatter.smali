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
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    .line 44
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

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
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
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

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

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
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "formatSymbols"    # Ljava/text/DateFormatSymbols;

    .prologue
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

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

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
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
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

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

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

    .prologue
    .line 80
    const-string v1, "MMMMM"

    const-string/jumbo v2, "\ue001MMM\ue002"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "t":Ljava/lang/String;
    const-string v1, "\\[H\\]"

    const v2, 0xe010

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "\\[HH\\]"

    const v2, 0xe011

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "\\[m\\]"

    const v2, 0xe012

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "\\[mm\\]"

    const v2, 0xe013

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "\\[s\\]"

    const v2, 0xe014

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "\\[ss\\]"

    const v2, 0xe015

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .locals 10
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "paramStringBuffer"    # Ljava/lang/StringBuffer;
    .param p3, "paramFieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "s":Ljava/lang/String;
    const v6, 0xe001

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 111
    const-string/jumbo v6, "\ue001(\\w)\\w+\ue002"

    const-string v7, "$1"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    :cond_0
    const v6, 0xe010

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const v6, 0xe011

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 119
    :cond_1
    iget-wide v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    double-to-float v6, v6

    const/high16 v7, 0x41c00000    # 24.0f

    mul-float v0, v6, v7

    .line 121
    .local v0, "hours":F
    const v6, 0xe010

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    const v6, 0xe011

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    float-to-double v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .end local v0    # "hours":F
    :cond_2
    const v6, 0xe012

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    const v6, 0xe013

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 133
    :cond_3
    iget-wide v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    double-to-float v6, v6

    const/high16 v7, 0x41c00000    # 24.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x42700000    # 60.0f

    mul-float v3, v6, v7

    .line 134
    .local v3, "minutes":F
    const v6, 0xe012

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    const v6, 0xe013

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    float-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .end local v3    # "minutes":F
    :cond_4
    const v6, 0xe014

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    const v6, 0xe015

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 145
    :cond_5
    iget-wide v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 146
    .local v5, "seconds":F
    const v6, 0xe014

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format1digit:Ljava/text/DecimalFormat;

    float-to-double v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    const v6, 0xe015

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format2digits:Ljava/text/DecimalFormat;

    float-to-double v8, v5

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .end local v5    # "seconds":F
    :cond_6
    const v6, 0xe016

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    const v6, 0xe017

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 158
    :cond_7
    iget-wide v6, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    iget-wide v8, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v6, v8

    double-to-float v2, v6

    .line 159
    .local v2, "millisTemp":F
    float-to-int v6, v2

    int-to-float v6, v6

    sub-float v1, v2, v6

    .line 160
    .local v1, "millis":F
    const v6, 0xe016

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format3digit:Ljava/text/DecimalFormat;

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v8, v1

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    const v6, 0xe017

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->format4digits:Ljava/text/DecimalFormat;

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v8, v1

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .end local v1    # "millis":F
    .end local v2    # "millisTemp":F
    :cond_8
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v6
.end method

.method public setDateToBeFormatted(D)V
    .locals 1
    .param p1, "date"    # D

    .prologue
    .line 100
    iput-wide p1, p0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->dateToBeFormatted:D

    .line 101
    return-void
.end method
