.class final Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;
.super Ljava/lang/Object;
.source "HyperlinkRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/HyperlinkRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GUID"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ENCODED_SIZE:I = 0x10

.field private static final TEXT_FORMAT_LENGTH:I = 0x24


# instance fields
.field private final _d1:I

.field private final _d2:I

.field private final _d3:I

.field private final _d4:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IIIJ)V
    .locals 0
    .param p1, "d1"    # I
    .param p2, "d2"    # I
    .param p3, "d3"    # I
    .param p4, "d4"    # J

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    .line 72
    iput p2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    .line 73
    iput p3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    .line 74
    iput-wide p4, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 6
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .prologue
    .line 67
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;-><init>(IIIJ)V

    .line 68
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;
    .locals 9
    .param p0, "rep"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 157
    .local v6, "cc":[C
    array-length v0, v6

    const/16 v8, 0x24

    if-eq v0, v8, :cond_0

    .line 158
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v8, "supplied text is the wrong length for a GUID"

    invoke-direct {v0, v8}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseShort([CI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v8, 0x4

    invoke-static {v6, v8}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseShort([CI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x0

    add-int v1, v0, v8

    .line 161
    .local v1, "d0":I
    const/16 v0, 0x9

    invoke-static {v6, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseShort([CI)I

    move-result v2

    .line 162
    .local v2, "d1":I
    const/16 v0, 0xe

    invoke-static {v6, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseShort([CI)I

    move-result v3

    .line 163
    .local v3, "d2":I
    const/16 v7, 0x17

    .local v7, "i":I
    :goto_0
    const/16 v0, 0x13

    if-le v7, v0, :cond_1

    .line 164
    add-int/lit8 v0, v7, -0x1

    aget-char v0, v6, v0

    aput-char v0, v6, v7

    .line 163
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 166
    :cond_1
    const/16 v0, 0x14

    invoke-static {v6, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseLELong([CI)J

    move-result-wide v4

    .line 168
    .local v4, "d3":J
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;-><init>(IIIJ)V

    return-object v0
.end method

.method private static parseHexChar(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 192
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 193
    add-int/lit8 v0, p0, -0x30

    .line 199
    :goto_0
    return v0

    .line 195
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 196
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 198
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 199
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 201
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseLELong([CI)J
    .locals 7
    .param p0, "cc"    # [C
    .param p1, "startIndex"    # I

    .prologue
    const/4 v6, 0x4

    .line 172
    const-wide/16 v0, 0x0

    .line 173
    .local v0, "acc":J
    add-int/lit8 v2, p1, 0xe

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 174
    shl-long/2addr v0, v6

    .line 175
    add-int/lit8 v3, v2, 0x0

    aget-char v3, p0, v3

    invoke-static {v3}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseHexChar(C)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 176
    shl-long/2addr v0, v6

    .line 177
    add-int/lit8 v3, v2, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseHexChar(C)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 173
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 179
    :cond_0
    return-wide v0
.end method

.method private static parseShort([CI)I
    .locals 3
    .param p0, "cc"    # [C
    .param p1, "startIndex"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "acc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 185
    shl-int/lit8 v0, v0, 0x4

    .line 186
    add-int v2, p1, v1

    aget-char v2, p0, v2

    invoke-static {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parseHexChar(C)I

    move-result v2

    add-int/2addr v0, v2

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 86
    instance-of v2, p1, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 87
    check-cast v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 88
    .local v0, "other":Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;
    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    iget v3, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    iget v3, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    iget v3, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    iget-wide v4, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public formatAsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "0x"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 127
    .local v0, "PREFIX_LEN":I
    iget v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 128
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v2, v3, v0, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v2, v3, v0, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->getD4()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/util/HexDump;->longToHex(J)[C

    move-result-object v1

    .line 134
    .local v1, "d4Chars":[C
    invoke-virtual {v2, v1, v0, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v3, v0, 0x4

    const/16 v4, 0xc

    invoke-virtual {v2, v1, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getD1()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    return v0
.end method

.method public getD2()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    return v0
.end method

.method public getD3()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    return v0
.end method

.method public getD4()J
    .locals 6

    .prologue
    .line 112
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 114
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v4, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 119
    .local v1, "buf":[B
    new-instance v3, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v3, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readLong()J

    move-result-wide v4

    return-wide v4

    .line 115
    .end local v1    # "buf":[B
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 94
    sget-boolean v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 95
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 78
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 79
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 80
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 81
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->_d4:J

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
