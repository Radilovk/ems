.class public Lorg/apache/poi/ss/format/CellTextFormatter;
.super Lorg/apache/poi/ss/format/CellFormatter;
.source "CellTextFormatter.java"


# static fields
.field static final SIMPLE_TEXT:Lorg/apache/poi/ss/format/CellFormatter;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final textPos:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lorg/apache/poi/ss/format/CellTextFormatter;

    const-string v1, "@"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/format/CellTextFormatter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellTextFormatter;->SIMPLE_TEXT:Lorg/apache/poi/ss/format/CellFormatter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "format"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatter;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 39
    .local v1, "numPlaces":[I
    sget-object v2, Lorg/apache/poi/ss/format/CellFormatType;->TEXT:Lorg/apache/poi/ss/format/CellFormatType;

    new-instance v3, Lorg/apache/poi/ss/format/CellTextFormatter$1;

    invoke-direct {v3, p0, v1}, Lorg/apache/poi/ss/format/CellTextFormatter$1;-><init>(Lorg/apache/poi/ss/format/CellTextFormatter;[I)V

    invoke-static {p1, v2, v3}, Lorg/apache/poi/ss/format/CellFormatPart;->parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/ss/format/CellTextFormatter;->desc:Ljava/lang/String;

    .line 52
    const/4 v3, 0x0

    aget v3, v1, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellTextFormatter;->textPos:[I

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    .line 54
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellTextFormatter;->textPos:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 55
    iget-object v5, p0, Lorg/apache/poi/ss/format/CellTextFormatter;->desc:Ljava/lang/String;

    const-string v6, "\u0000"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v3

    .line 56
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellTextFormatter;->textPos:[I

    aget v4, v4, v3

    add-int/lit8 v2, v4, -0x1

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 5
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 63
    .local v0, "start":I
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "text":Ljava/lang/String;
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellTextFormatter;->desc:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellTextFormatter;->textPos:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 69
    aget v3, v3, v2

    add-int/2addr v3, v0

    .line 70
    .local v3, "pos":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3, v4, v1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .end local v3    # "pos":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public simpleValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/apache/poi/ss/format/CellTextFormatter;->SIMPLE_TEXT:Lorg/apache/poi/ss/format/CellFormatter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatter;->formatValue(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 81
    return-void
.end method
