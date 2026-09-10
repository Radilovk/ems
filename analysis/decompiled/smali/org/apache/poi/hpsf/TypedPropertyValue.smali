.class Lorg/apache/poi/hpsf/TypedPropertyValue;
.super Ljava/lang/Object;
.source "TypedPropertyValue.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _type:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    .line 48
    iput-object p2, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/TypedPropertyValue;->read([BI)I

    .line 43
    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method read([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .prologue
    .line 58
    move v0, p2

    .line 60
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    .line 61
    add-int/lit8 v0, v0, 0x2

    .line 63
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    .line 64
    .local v1, "padding":S
    add-int/lit8 v0, v0, 0x2

    .line 65
    if-eqz v1, :cond_0

    .line 67
    sget-object v2, Lorg/apache/poi/hpsf/TypedPropertyValue;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TypedPropertyValue padding at offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MUST be 0, but it\'s value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 71
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue([BI)I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    sub-int v2, v0, p2

    return v2
.end method

.method readValue([BI)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    const/16 v1, 0x8

    const/4 v0, 0x4

    .line 78
    iget v4, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    sparse-switch v4, :sswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown (possibly, incorrect) TypedPropertyValue type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :sswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    .line 86
    :sswitch_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto :goto_0

    .line 90
    :sswitch_2
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto :goto_0

    .line 94
    :sswitch_3
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto :goto_0

    .line 98
    :sswitch_4
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v1

    .line 99
    goto :goto_0

    .line 102
    :sswitch_5
    new-instance v0, Lorg/apache/poi/hpsf/Currency;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Currency;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v1

    .line 103
    goto :goto_0

    .line 106
    :sswitch_6
    new-instance v0, Lorg/apache/poi/hpsf/Date;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Date;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v1

    .line 107
    goto :goto_0

    .line 110
    :sswitch_7
    new-instance v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/CodePageString;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CodePageString;->getSize()I

    move-result v0

    goto :goto_0

    .line 114
    :sswitch_8
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto :goto_0

    .line 118
    :sswitch_9
    new-instance v0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/VariantBool;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v2

    .line 119
    goto :goto_0

    .line 122
    :sswitch_a
    new-instance v0, Lorg/apache/poi/hpsf/Decimal;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Decimal;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v3

    .line 123
    goto :goto_0

    .line 126
    :sswitch_b
    aget-byte v0, p1, p2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :sswitch_c
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v2

    .line 131
    goto/16 :goto_0

    .line 134
    :sswitch_d
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 138
    :sswitch_e
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 142
    :sswitch_f
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v1

    .line 143
    goto/16 :goto_0

    .line 146
    :sswitch_10
    invoke-static {p1, p2, v1}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v1

    .line 147
    goto/16 :goto_0

    .line 150
    :sswitch_11
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 154
    :sswitch_12
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 158
    :sswitch_13
    new-instance v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/CodePageString;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CodePageString;->getSize()I

    move-result v0

    goto/16 :goto_0

    .line 162
    :sswitch_14
    new-instance v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/UnicodeString;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/UnicodeString;->getSize()I

    move-result v0

    goto/16 :goto_0

    .line 166
    :sswitch_15
    new-instance v0, Lorg/apache/poi/hpsf/Filetime;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Filetime;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v1

    .line 167
    goto/16 :goto_0

    .line 170
    :sswitch_16
    new-instance v0, Lorg/apache/poi/hpsf/Blob;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Blob;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/Blob;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Blob;->getSize()I

    move-result v0

    goto/16 :goto_0

    .line 177
    :sswitch_17
    new-instance v0, Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/IndirectPropertyName;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/IndirectPropertyName;->getSize()I

    move-result v0

    goto/16 :goto_0

    .line 181
    :sswitch_18
    new-instance v0, Lorg/apache/poi/hpsf/Blob;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Blob;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/Blob;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Blob;->getSize()I

    move-result v0

    goto/16 :goto_0

    .line 185
    :sswitch_19
    new-instance v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/ClipboardData;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClipboardData;->getSize()I

    move-result v0

    goto/16 :goto_0

    .line 189
    :sswitch_1a
    new-instance v0, Lorg/apache/poi/hpsf/GUID;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/GUID;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    move v0, v3

    .line 190
    goto/16 :goto_0

    .line 193
    :sswitch_1b
    new-instance v0, Lorg/apache/poi/hpsf/VersionedStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/VersionedStream;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/VersionedStream;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/VersionedStream;->getSize()I

    move-result v0

    goto/16 :goto_0

    .line 217
    :sswitch_1c
    new-instance v0, Lorg/apache/poi/hpsf/Vector;

    iget v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    and-int/lit16 v1, v1, 0xfff

    int-to-short v1, v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/Vector;-><init>(S)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/Vector;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/Vector;->read([BI)I

    move-result v0

    goto/16 :goto_0

    .line 237
    :sswitch_1d
    new-instance v0, Lorg/apache/poi/hpsf/Array;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Array;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/hpsf/Array;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/Array;->read([BI)I

    move-result v0

    goto/16 :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xe -> :sswitch_a
        0x10 -> :sswitch_b
        0x11 -> :sswitch_c
        0x12 -> :sswitch_d
        0x13 -> :sswitch_e
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x1e -> :sswitch_13
        0x1f -> :sswitch_14
        0x40 -> :sswitch_15
        0x41 -> :sswitch_16
        0x42 -> :sswitch_17
        0x43 -> :sswitch_17
        0x44 -> :sswitch_17
        0x45 -> :sswitch_17
        0x46 -> :sswitch_18
        0x47 -> :sswitch_19
        0x48 -> :sswitch_1a
        0x49 -> :sswitch_1b
        0x1002 -> :sswitch_1c
        0x1003 -> :sswitch_1c
        0x1004 -> :sswitch_1c
        0x1005 -> :sswitch_1c
        0x1006 -> :sswitch_1c
        0x1007 -> :sswitch_1c
        0x1008 -> :sswitch_1c
        0x100a -> :sswitch_1c
        0x100b -> :sswitch_1c
        0x100c -> :sswitch_1c
        0x1010 -> :sswitch_1c
        0x1011 -> :sswitch_1c
        0x1012 -> :sswitch_1c
        0x1013 -> :sswitch_1c
        0x1014 -> :sswitch_1c
        0x1015 -> :sswitch_1c
        0x101e -> :sswitch_1c
        0x101f -> :sswitch_1c
        0x1040 -> :sswitch_1c
        0x1047 -> :sswitch_1c
        0x1048 -> :sswitch_1c
        0x2002 -> :sswitch_1d
        0x2003 -> :sswitch_1d
        0x2004 -> :sswitch_1d
        0x2005 -> :sswitch_1d
        0x2006 -> :sswitch_1d
        0x2007 -> :sswitch_1d
        0x2008 -> :sswitch_1d
        0x200a -> :sswitch_1d
        0x200b -> :sswitch_1d
        0x200c -> :sswitch_1d
        0x200e -> :sswitch_1d
        0x2010 -> :sswitch_1d
        0x2011 -> :sswitch_1d
        0x2012 -> :sswitch_1d
        0x2013 -> :sswitch_1d
        0x2016 -> :sswitch_1d
        0x2017 -> :sswitch_1d
    .end sparse-switch
.end method

.method readValuePadded([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue([BI)I

    move-result v0

    .line 250
    .local v0, "nonPadded":I
    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_0

    .end local v0    # "nonPadded":I
    :goto_0
    return v0

    .restart local v0    # "nonPadded":I
    :cond_0
    and-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    goto :goto_0
.end method
