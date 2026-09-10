.class public Lorg/apache/poi/ss/format/CellDateFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellDateFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .locals 9

    .line 43
    new-instance v0, Lorg/apache/poi/ss/format/CellDateFormatter;

    const-string v1, "mm/d/y"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/format/CellDateFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellFormatter;

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, "c":Ljava/util/Calendar;
    const/16 v3, 0x770

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 49
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_DATE:Ljava/util/Date;

    .line 50
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_TIME:J

    .line 51
    .end local v0    # "c":Ljava/util/Calendar;
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "format"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;-><init>(Lorg/apache/poi/ss/format/CellDateFormatter;Lorg/apache/poi/ss/format/CellDateFormatter$1;)V

    .line 150
    .local v0, "partHandler":Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
    sget-object v1, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-static {p1, v1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 152
    .local v1, "descBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->finish(Ljava/lang/StringBuffer;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "((y)(?!y))(?<!yy)"

    const-string v4, "yy"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 33
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;

    .line 33
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/poi/ss/format/CellDateFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;

    .line 33
    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    return p1
.end method

.method static synthetic access$302(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    return p1
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 19
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 161
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    if-nez p2, :cond_0

    .line 162
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .end local p2    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 161
    .end local v0    # "value":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p2

    .line 163
    .end local p2    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    :goto_0
    instance-of v5, v0, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 164
    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    .line 165
    .local v5, "num":Ljava/lang/Number;
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 166
    .local v6, "v":D
    cmpl-double v8, v6, v3

    if-nez v8, :cond_1

    .line 167
    sget-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_DATE:Ljava/util/Date;

    move-object v3, v0

    goto :goto_1

    .line 169
    :cond_1
    new-instance v3, Ljava/util/Date;

    sget-wide v8, Lorg/apache/poi/ss/format/CellDateFormatter;->EXCEL_EPOCH_TIME:J

    long-to-double v8, v8

    add-double/2addr v8, v6

    double-to-long v8, v8

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object v0, v3

    goto :goto_1

    .line 163
    .end local v5    # "num":Ljava/lang/Number;
    .end local v6    # "v":D
    :cond_2
    move-object v3, v0

    .line 172
    .end local v0    # "value":Ljava/lang/Object;
    .local v3, "value":Ljava/lang/Object;
    :goto_1
    iget-object v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->dateFmt:Ljava/text/DateFormat;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    .line 174
    .local v4, "it":Ljava/text/AttributedCharacterIterator;
    const/4 v0, 0x0

    .line 175
    .local v0, "doneAm":Z
    const/4 v5, 0x0

    .line 177
    .local v5, "doneMillis":Z
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->first()C

    .line 178
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v6

    move v7, v6

    move v6, v5

    move v5, v0

    .line 179
    .end local v0    # "doneAm":Z
    .local v5, "doneAm":Z
    .local v6, "doneMillis":Z
    .local v7, "ch":C
    :goto_2
    const v0, 0xffff

    if-eq v7, v0, :cond_9

    .line 181
    sget-object v0, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    invoke-interface {v4, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 182
    if-nez v6, :cond_3

    .line 183
    move-object v8, v3

    check-cast v8, Ljava/util/Date;

    .line 184
    .local v8, "dateObj":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 185
    .local v9, "pos":I
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object v10, v0

    .line 187
    .local v10, "formatter":Ljava/util/Formatter;
    :try_start_0
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    rem-long/2addr v11, v13

    .line 188
    .local v11, "msecs":J
    sget-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->LOCALE:Ljava/util/Locale;

    iget-object v13, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->sFmt:Ljava/lang/String;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x0

    move/from16 p2, v6

    move/from16 v16, v7

    .end local v6    # "doneMillis":Z
    .end local v7    # "ch":C
    .local v16, "ch":C
    .local p2, "doneMillis":Z
    long-to-double v6, v11

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v17

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v14, v15

    invoke-virtual {v10, v0, v13, v14}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    nop

    .end local v11    # "msecs":J
    invoke-virtual {v10}, Ljava/util/Formatter;->close()V

    .line 191
    nop

    .line 192
    add-int/lit8 v0, v9, 0x2

    invoke-virtual {v2, v9, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 193
    const/4 v0, 0x1

    .line 194
    .end local v8    # "dateObj":Ljava/util/Date;
    .end local v9    # "pos":I
    .end local v10    # "formatter":Ljava/util/Formatter;
    .end local p2    # "doneMillis":Z
    .local v0, "doneMillis":Z
    move/from16 v6, v16

    goto :goto_6

    .line 190
    .end local v0    # "doneMillis":Z
    .restart local v8    # "dateObj":Ljava/util/Date;
    .restart local v9    # "pos":I
    .restart local v10    # "formatter":Ljava/util/Formatter;
    .restart local p2    # "doneMillis":Z
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v16    # "ch":C
    .end local p2    # "doneMillis":Z
    .restart local v6    # "doneMillis":Z
    .restart local v7    # "ch":C
    :catchall_1
    move-exception v0

    move/from16 p2, v6

    move/from16 v16, v7

    .end local v6    # "doneMillis":Z
    .end local v7    # "ch":C
    .restart local v16    # "ch":C
    .restart local p2    # "doneMillis":Z
    :goto_3
    invoke-virtual {v10}, Ljava/util/Formatter;->close()V

    throw v0

    .line 182
    .end local v8    # "dateObj":Ljava/util/Date;
    .end local v9    # "pos":I
    .end local v10    # "formatter":Ljava/util/Formatter;
    .end local v16    # "ch":C
    .end local p2    # "doneMillis":Z
    .restart local v6    # "doneMillis":Z
    .restart local v7    # "ch":C
    :cond_3
    move/from16 p2, v6

    move/from16 v16, v7

    .end local v6    # "doneMillis":Z
    .end local v7    # "ch":C
    .restart local v16    # "ch":C
    .restart local p2    # "doneMillis":Z
    move/from16 v6, v16

    goto :goto_5

    .line 195
    .end local v16    # "ch":C
    .end local p2    # "doneMillis":Z
    .restart local v6    # "doneMillis":Z
    .restart local v7    # "ch":C
    :cond_4
    move/from16 p2, v6

    move/from16 v16, v7

    .end local v6    # "doneMillis":Z
    .end local v7    # "ch":C
    .restart local v16    # "ch":C
    .restart local p2    # "doneMillis":Z
    sget-object v0, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    invoke-interface {v4, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 196
    if-nez v5, :cond_7

    .line 197
    iget-boolean v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showAmPm:Z

    if-eqz v0, :cond_6

    .line 198
    iget-boolean v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->amPmUpper:Z

    if-eqz v0, :cond_5

    .line 199
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    iget-boolean v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v0, :cond_6

    .line 201
    const/16 v0, 0x4d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 203
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    iget-boolean v0, v1, Lorg/apache/poi/ss/format/CellDateFormatter;->showM:Z

    if-eqz v0, :cond_6

    .line 205
    const/16 v0, 0x6d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    :cond_6
    :goto_4
    const/4 v0, 0x1

    move v5, v0

    move/from16 v6, v16

    move/from16 v0, p2

    .end local v5    # "doneAm":Z
    .local v0, "doneAm":Z
    goto :goto_6

    .line 196
    .end local v0    # "doneAm":Z
    .restart local v5    # "doneAm":Z
    :cond_7
    move/from16 v6, v16

    goto :goto_5

    .line 211
    :cond_8
    move/from16 v6, v16

    .end local v16    # "ch":C
    .local v6, "ch":C
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    .end local v6    # "ch":C
    .restart local v16    # "ch":C
    :goto_5
    move/from16 v0, p2

    .end local v16    # "ch":C
    .end local p2    # "doneMillis":Z
    .local v0, "doneMillis":Z
    .restart local v6    # "ch":C
    :goto_6
    invoke-interface {v4}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v7

    move v6, v0

    .end local v6    # "ch":C
    .restart local v7    # "ch":C
    goto/16 :goto_2

    .line 214
    .end local v0    # "doneMillis":Z
    .end local v7    # "ch":C
    .local v6, "doneMillis":Z
    :cond_9
    return-void
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/apache/poi/ss/format/CellDateFormatter;->SIMPLE_DATE:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 223
    return-void
.end method
