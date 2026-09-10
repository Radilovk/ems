.class public abstract Lorg/apache/poi/util/LZWDecompresser;
.super Ljava/lang/Object;
.source "LZWDecompresser.java"


# instance fields
.field private final codeLengthIncrease:I

.field private final maskMeansCompressed:Z

.field private final positionIsBigEndian:Z


# direct methods
.method protected constructor <init>(ZIZ)V
    .locals 0
    .param p1, "maskMeansCompressed"    # Z
    .param p2, "codeLengthIncrease"    # I
    .param p3, "positionIsBigEndian"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lorg/apache/poi/util/LZWDecompresser;->maskMeansCompressed:Z

    .line 55
    iput p2, p0, Lorg/apache/poi/util/LZWDecompresser;->codeLengthIncrease:I

    .line 56
    iput-boolean p3, p0, Lorg/apache/poi/util/LZWDecompresser;->positionIsBigEndian:Z

    .line 57
    return-void
.end method

.method public static fromByte(B)I
    .locals 0
    .param p0, "b"    # B

    .prologue
    .line 197
    if-ltz p0, :cond_0

    .line 200
    .end local p0    # "b":B
    :goto_0
    return p0

    .restart local p0    # "b":B
    :cond_0
    add-int/lit16 p0, p0, 0x100

    goto :goto_0
.end method

.method public static fromInt(I)B
    .locals 1
    .param p0, "b"    # I

    .prologue
    .line 188
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    int-to-byte v0, p0

    .line 189
    :goto_0
    return v0

    :cond_0
    add-int/lit16 v0, p0, -0x100

    int-to-byte v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract adjustDictionaryOffset(I)I
.end method

.method public decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 16
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "res"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/16 v13, 0x1000

    new-array v1, v13, [B

    .line 117
    .local v1, "buffer":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LZWDecompresser;->populateDictionary([B)I

    move-result v12

    .line 122
    .local v12, "pos":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/poi/util/LZWDecompresser;->codeLengthIncrease:I

    add-int/lit8 v13, v13, 0x10

    new-array v2, v13, [B

    .line 132
    .local v2, "dataB":[B
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v6

    .local v6, "flag":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_6

    .line 134
    const/4 v10, 0x1

    .local v10, "mask":I
    :goto_0
    const/16 v13, 0x100

    if-ge v10, v13, :cond_0

    .line 137
    and-int v13, v6, v10

    if-lez v13, :cond_2

    const/4 v8, 0x1

    .line 138
    .local v8, "isMaskSet":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/poi/util/LZWDecompresser;->maskMeansCompressed:Z

    xor-int/2addr v13, v8

    if-eqz v13, :cond_3

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "dataI":I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_1

    .line 142
    and-int/lit16 v13, v12, 0xfff

    invoke-static {v3}, Lorg/apache/poi/util/LZWDecompresser;->fromInt(I)B

    move-result v14

    aput-byte v14, v1, v13

    .line 143
    add-int/lit8 v12, v12, 0x1

    .line 145
    const/4 v13, 0x1

    new-array v13, v13, [B

    const/4 v14, 0x0

    invoke-static {v3}, Lorg/apache/poi/util/LZWDecompresser;->fromInt(I)B

    move-result v15

    aput-byte v15, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 134
    .end local v3    # "dataI":I
    :cond_1
    :goto_2
    shl-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 137
    .end local v8    # "isMaskSet":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 150
    .restart local v8    # "isMaskSet":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 151
    .local v4, "dataIPt1":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 152
    .local v5, "dataIPt2":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_0

    const/4 v13, -0x1

    if-eq v5, v13, :cond_0

    .line 158
    and-int/lit8 v13, v5, 0xf

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/poi/util/LZWDecompresser;->codeLengthIncrease:I

    add-int v9, v13, v14

    .line 159
    .local v9, "len":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/poi/util/LZWDecompresser;->positionIsBigEndian:Z

    if-eqz v13, :cond_4

    .line 160
    shl-int/lit8 v13, v4, 0x4

    shr-int/lit8 v14, v5, 0x4

    add-int v11, v13, v14

    .line 166
    .local v11, "pntr":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/poi/util/LZWDecompresser;->adjustDictionaryOffset(I)I

    move-result v11

    .line 169
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v9, :cond_5

    .line 170
    add-int v13, v11, v7

    and-int/lit16 v13, v13, 0xfff

    aget-byte v13, v1, v13

    aput-byte v13, v2, v7

    .line 171
    add-int v13, v12, v7

    and-int/lit16 v13, v13, 0xfff

    aget-byte v14, v2, v7

    aput-byte v14, v1, v13

    .line 169
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 162
    .end local v7    # "i":I
    .end local v11    # "pntr":I
    :cond_4
    and-int/lit16 v13, v5, 0xf0

    shl-int/lit8 v13, v13, 0x4

    add-int v11, v4, v13

    .restart local v11    # "pntr":I
    goto :goto_3

    .line 173
    .restart local v7    # "i":I
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 176
    add-int/2addr v12, v9

    goto :goto_2

    .line 180
    .end local v4    # "dataIPt1":I
    .end local v5    # "dataIPt2":I
    .end local v7    # "i":I
    .end local v8    # "isMaskSet":Z
    .end local v9    # "len":I
    .end local v10    # "mask":I
    .end local v11    # "pntr":I
    :cond_6
    return-void
.end method

.method public decompress(Ljava/io/InputStream;)[B
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v0, "res":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/LZWDecompresser;->decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected abstract populateDictionary([B)I
.end method
