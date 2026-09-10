.class public Lorg/apache/poi/ss/format/CellElapsedFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellElapsedFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellElapsedFormatter$1;,
        Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;,
        Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    }
.end annotation


# static fields
.field private static final HOUR__FACTOR:D = 0.041666666666666664

.field private static final MIN__FACTOR:D = 6.944444444444444E-4

.field private static final PERCENTS:Ljava/util/regex/Pattern;

.field private static final SEC__FACTOR:D = 1.1574074074074073E-5


# instance fields
.field private final printfFmt:Ljava/lang/String;

.field private final specs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;",
            ">;"
        }
    .end annotation
.end field

.field private topmost:Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "%"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->PERCENTS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    .line 136
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->ELAPSED:Lorg/apache/poi/ss/format/CellFormatType;

    new-instance v4, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;-><init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$1;)V

    invoke-static {p1, v3, v4}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 139
    .local v0, "desc":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 140
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 142
    .local v2, "spec":Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    iget v3, v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->pos:I

    iget v4, v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->pos:I

    iget v5, v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->len:I

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->len:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-char v3, v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->type:C

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->topmost:Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    iget-char v4, v4, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->type:C

    if-eq v3, v4, :cond_0

    .line 144
    iget-char v3, v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->type:C

    iget v4, v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->len:I

    invoke-static {v3, v4}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->modFor(CI)D

    move-result-wide v4

    iput-wide v4, v2, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->modBy:D

    goto :goto_0

    .line 148
    .end local v2    # "spec":Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->printfFmt:Ljava/lang/String;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/ss/format/CellElapsedFormatter;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellElapsedFormatter;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->topmost:Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellElapsedFormatter;
    .param p1, "x1"    # Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->topmost:Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/poi/ss/format/CellElapsedFormatter;CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/ss/format/CellElapsedFormatter;
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->assignSpec(CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->PERCENTS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private assignSpec(CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    .locals 6
    .param p1, "type"    # C
    .param p2, "pos"    # I
    .param p3, "len"    # I

    .prologue
    .line 152
    new-instance v0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    invoke-static {p1, p3}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->factorFor(CI)D

    move-result-wide v4

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;-><init>(CIID)V

    .line 153
    .local v0, "spec":Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object v0
.end method

.method private static factorFor(CI)D
    .locals 6
    .param p0, "type"    # C
    .param p1, "len"    # I

    .prologue
    const-wide v0, 0x3ee845c8a0ce5129L    # 1.1574074074074073E-5

    .line 158
    sparse-switch p0, :sswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uknown elapsed time spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :sswitch_0
    const-wide v0, 0x3fa5555555555555L    # 0.041666666666666664

    .line 166
    :goto_0
    :sswitch_1
    return-wide v0

    .line 162
    :sswitch_2
    const-wide v0, 0x3f46c16c16c16c16L    # 6.944444444444444E-4

    goto :goto_0

    .line 166
    :sswitch_3
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x68 -> :sswitch_0
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method private static modFor(CI)D
    .locals 4
    .param p0, "type"    # C
    .param p1, "len"    # I

    .prologue
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 174
    sparse-switch p0, :sswitch_data_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uknown elapsed time spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :sswitch_0
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    .line 182
    :goto_0
    :sswitch_1
    return-wide v0

    :sswitch_2
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_2
        0x68 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 8
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 193
    .local v0, "elapsed":D
    const-wide/16 v6, 0x0

    cmpg-double v5, v0, v6

    if-gez v5, :cond_0

    .line 194
    const/16 v5, 0x2d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 195
    neg-double v0, v0

    .line 198
    :cond_0
    iget-object v5, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Long;

    .line 199
    .local v4, "parts":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 200
    iget-object v5, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->specs:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    invoke-virtual {v5, v0, v1}, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->valueFor(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 205
    .local v2, "formatter":Ljava/util/Formatter;
    :try_start_0
    iget-object v5, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter;->printfFmt:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    .line 209
    return-void

    .line 207
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    throw v5
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 218
    return-void
.end method
