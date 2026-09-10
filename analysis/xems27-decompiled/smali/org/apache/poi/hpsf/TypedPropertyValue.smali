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

    .line 29
    const-class v0, Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/TypedPropertyValue;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

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

    .line 53
    iget-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method read([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .line 58
    move v0, p2

    .line 60
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

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

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " MUST be 0, but it\'s value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 78
    iget v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    const/16 v1, 0xa

    const/4 v2, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x101e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x101f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1047

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1048

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    const/16 v4, 0x10

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown (possibly, incorrect) TypedPropertyValue type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 155
    return v2

    .line 150
    :pswitch_1
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 151
    return v2

    .line 146
    :pswitch_2
    invoke-static {p1, p2, v1}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 147
    return v1

    .line 142
    :pswitch_3
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 143
    return v1

    .line 138
    :pswitch_4
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 139
    return v2

    .line 134
    :pswitch_5
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 135
    return v2

    .line 130
    :pswitch_6
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 131
    return v3

    .line 126
    :pswitch_7
    aget-byte v0, p1, p2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    return v0

    .line 237
    :sswitch_0
    new-instance v0, Lorg/apache/poi/hpsf/Array;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/Array;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 238
    check-cast v0, Lorg/apache/poi/hpsf/Array;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/Array;->read([BI)I

    move-result v0

    return v0

    .line 193
    :sswitch_1
    new-instance v0, Lorg/apache/poi/hpsf/VersionedStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/VersionedStream;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 194
    check-cast v0, Lorg/apache/poi/hpsf/VersionedStream;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/VersionedStream;->getSize()I

    move-result v0

    return v0

    .line 189
    :sswitch_2
    new-instance v0, Lorg/apache/poi/hpsf/GUID;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/GUID;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 190
    return v4

    .line 185
    :sswitch_3
    new-instance v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/ClipboardData;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 186
    check-cast v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/ClipboardData;->getSize()I

    move-result v0

    return v0

    .line 181
    :sswitch_4
    new-instance v0, Lorg/apache/poi/hpsf/Blob;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Blob;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 182
    check-cast v0, Lorg/apache/poi/hpsf/Blob;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Blob;->getSize()I

    move-result v0

    return v0

    .line 177
    :sswitch_5
    new-instance v0, Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/IndirectPropertyName;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 178
    check-cast v0, Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/IndirectPropertyName;->getSize()I

    move-result v0

    return v0

    .line 170
    :sswitch_6
    new-instance v0, Lorg/apache/poi/hpsf/Blob;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Blob;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 171
    check-cast v0, Lorg/apache/poi/hpsf/Blob;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Blob;->getSize()I

    move-result v0

    return v0

    .line 166
    :sswitch_7
    new-instance v0, Lorg/apache/poi/hpsf/Filetime;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Filetime;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 167
    return v1

    .line 122
    :sswitch_8
    new-instance v0, Lorg/apache/poi/hpsf/Decimal;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Decimal;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 123
    return v4

    .line 110
    :pswitch_8
    new-instance v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/CodePageString;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 111
    check-cast v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CodePageString;->getSize()I

    move-result v0

    return v0

    .line 106
    :pswitch_9
    new-instance v0, Lorg/apache/poi/hpsf/Date;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Date;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 107
    return v1

    .line 102
    :pswitch_a
    new-instance v0, Lorg/apache/poi/hpsf/Currency;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/Currency;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 103
    return v1

    .line 98
    :pswitch_b
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getDouble([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 99
    return v1

    .line 94
    :pswitch_c
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 95
    return v2

    .line 90
    :pswitch_d
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 91
    return v2

    .line 86
    :pswitch_e
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 87
    return v2

    .line 82
    :pswitch_f
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    :pswitch_10
    :sswitch_9
    new-instance v0, Lorg/apache/poi/hpsf/Vector;

    iget v1, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_type:I

    and-int/lit16 v1, v1, 0xfff

    int-to-short v1, v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/Vector;-><init>(S)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 218
    check-cast v0, Lorg/apache/poi/hpsf/Vector;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/Vector;->read([BI)I

    move-result v0

    return v0

    .line 162
    :cond_1
    new-instance v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/UnicodeString;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 163
    check-cast v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/UnicodeString;->getSize()I

    move-result v0

    return v0

    .line 158
    :cond_2
    new-instance v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/CodePageString;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 159
    check-cast v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CodePageString;->getSize()I

    move-result v0

    return v0

    .line 118
    :cond_3
    new-instance v0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/VariantBool;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 119
    return v3

    .line 114
    :cond_4
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hpsf/TypedPropertyValue;->_value:Ljava/lang/Object;

    .line 115
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_8
        0x40 -> :sswitch_7
        0x41 -> :sswitch_6
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x44 -> :sswitch_5
        0x45 -> :sswitch_5
        0x46 -> :sswitch_4
        0x47 -> :sswitch_3
        0x48 -> :sswitch_2
        0x49 -> :sswitch_1
        0x1040 -> :sswitch_9
        0x2002 -> :sswitch_0
        0x2003 -> :sswitch_0
        0x2004 -> :sswitch_0
        0x2005 -> :sswitch_0
        0x2006 -> :sswitch_0
        0x2007 -> :sswitch_0
        0x2008 -> :sswitch_0
        0x200a -> :sswitch_0
        0x200b -> :sswitch_0
        0x200c -> :sswitch_0
        0x200e -> :sswitch_0
        0x2010 -> :sswitch_0
        0x2011 -> :sswitch_0
        0x2012 -> :sswitch_0
        0x2013 -> :sswitch_0
        0x2016 -> :sswitch_0
        0x2017 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1002
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x100a
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1010
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method readValuePadded([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue([BI)I

    move-result v0

    .line 250
    .local v0, "nonPadded":I
    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method
