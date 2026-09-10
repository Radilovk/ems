.class public Lorg/apache/poi/ss/format/CellDateFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellDateFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellDateFormatter$1;,
        Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
    }
.end annotation


# static fields
.field private static final EXCEL_EPOCH_DATE:Ljava/util/Date;

.field private static final EXCEL_EPOCH_TIME:J

.field private static final SIMPLE_DATE:Lorg/apache/poi/ss/format/CellFormatter;


# instance fields
.field private amPmUpper:Z

.field private final dateFmt:Ljava/text/DateFormat;

.field private sFmt:Ljava/lang/String;

.field private showAmPm:Z

.field private showM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v1, Lorg/apache/poi/ss/format/CellDateFormatter;

    const-string v3, "mm/d/y"

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellFormatter;

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0x770

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 49
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_DATE:Ljava/util/Date;

    .line 50
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_TIME:J

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v1, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;-><init>(Lorg/apache/poi/ss/format/CellDateFormatter;Lorg/apache/poi/ss/format/CellDateFormatter$1;)V

    .line 150
    .local v1, "partHandler":Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-static {p1, v3, v1}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 152
    .local v0, "descBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->finish(Ljava/lang/StringBuffer;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "((y)(?!y))(?<!yy)"

    const-string/jumbo v5, "yy"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "ptrn":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lorg/apache/poi/ss/format/CellDateFormatter;->LOCALE:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    .line 157
    return-void
.end method

.method static synthetic access$002(Lorg/apache/poi/ss/format/CellDateFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return p1
.end method

.method static synthetic access$302(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    return p1
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 24
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 161
    if-nez p2, :cond_0

    .line 162
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 163
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p2

    instance-of v14, v0, Ljava/lang/Number;

    if-eqz v14, :cond_8

    move-object/from16 v10, p2

    .line 164
    check-cast v10, Ljava/lang/Number;

    .line 165
    .local v10, "num":Ljava/lang/Number;
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    .line 166
    .local v12, "v":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v12, v14

    if-nez v14, :cond_2

    .line 167
    sget-object p2, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_DATE:Ljava/util/Date;

    .local p2, "value":Ljava/util/Date;
    move-object/from16 v14, p2

    .line 172
    .end local v10    # "num":Ljava/lang/Number;
    .end local v12    # "v":D
    .end local p2    # "value":Ljava/util/Date;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    invoke-virtual {v15, v14}, Ljava/text/DateFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v7

    .line 174
    .local v7, "it":Ljava/text/AttributedCharacterIterator;
    const/4 v4, 0x0

    .line 175
    .local v4, "doneAm":Z
    const/4 v5, 0x0

    .line 177
    .local v5, "doneMillis":Z
    invoke-interface {v7}, Ljava/text/AttributedCharacterIterator;->first()C

    .line 178
    invoke-interface {v7}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v2

    .line 179
    .local v2, "ch":C
    :goto_1
    const v15, 0xffff

    if-eq v2, v15, :cond_7

    .line 181
    sget-object v15, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    invoke-interface {v7, v15}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 182
    if-nez v5, :cond_1

    move-object v3, v14

    .line 183
    check-cast v3, Ljava/util/Date;

    .line 184
    .local v3, "dateObj":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    .line 185
    .local v11, "pos":I
    new-instance v6, Ljava/util/Formatter;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 187
    .local v6, "formatter":Ljava/util/Formatter;
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    rem-long v8, v16, v18

    .line 188
    .local v8, "msecs":J
    sget-object v15, Lorg/apache/poi/ss/format/CellDateFormatter;->LOCALE:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    long-to-double v0, v8

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v15, v0, v1}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v6}, Ljava/util/Formatter;->close()V

    .line 192
    add-int/lit8 v15, v11, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 193
    const/4 v5, 0x1

    .line 180
    .end local v3    # "dateObj":Ljava/util/Date;
    .end local v6    # "formatter":Ljava/util/Formatter;
    .end local v8    # "msecs":J
    .end local v11    # "pos":I
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v2

    goto :goto_1

    .line 169
    .end local v2    # "ch":C
    .end local v4    # "doneAm":Z
    .end local v5    # "doneMillis":Z
    .end local v7    # "it":Ljava/text/AttributedCharacterIterator;
    .restart local v10    # "num":Ljava/lang/Number;
    .restart local v12    # "v":D
    :cond_2
    new-instance p2, Ljava/util/Date;

    sget-wide v14, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_TIME:J

    long-to-double v14, v14

    add-double/2addr v14, v12

    double-to-long v14, v14

    move-object/from16 v0, p2

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    .restart local p2    # "value":Ljava/util/Date;
    move-object/from16 v14, p2

    goto :goto_0

    .line 190
    .end local v10    # "num":Ljava/lang/Number;
    .end local v12    # "v":D
    .end local p2    # "value":Ljava/util/Date;
    .restart local v2    # "ch":C
    .restart local v3    # "dateObj":Ljava/util/Date;
    .restart local v4    # "doneAm":Z
    .restart local v5    # "doneMillis":Z
    .restart local v6    # "formatter":Ljava/util/Formatter;
    .restart local v7    # "it":Ljava/text/AttributedCharacterIterator;
    .restart local v11    # "pos":I
    :catchall_0
    move-exception v14

    invoke-virtual {v6}, Ljava/util/Formatter;->close()V

    throw v14

    .line 195
    .end local v3    # "dateObj":Ljava/util/Date;
    .end local v6    # "formatter":Ljava/util/Formatter;
    .end local v11    # "pos":I
    :cond_3
    sget-object v15, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    invoke-interface {v7, v15}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 196
    if-nez v4, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    if-eqz v15, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    if-eqz v15, :cond_5

    .line 199
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v15, :cond_4

    .line 201
    const/16 v15, 0x4d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    :cond_4
    :goto_3
    const/4 v4, 0x1

    goto :goto_2

    .line 203
    :cond_5
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v15, :cond_4

    .line 205
    const/16 v15, 0x6d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 211
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 214
    :cond_7
    return-void

    .end local v2    # "ch":C
    .end local v4    # "doneAm":Z
    .end local v5    # "doneMillis":Z
    .end local v7    # "it":Ljava/text/AttributedCharacterIterator;
    :cond_8
    move-object/from16 v14, p2

    goto/16 :goto_0
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 222
    sget-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 223
    return-void
.end method
