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
    .locals 1
    .param p0, "b"    # B

    .line 197
    if-ltz p0, :cond_0

    .line 198
    return p0

    .line 200
    :cond_0
    add-int/lit16 v0, p0, 0x100

    return v0
.end method

.method public static fromInt(I)B
    .locals 1
    .param p0, "b"    # I

    .line 188
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    int-to-byte v0, p0

    return v0

    .line 189
    :cond_0
    add-int/lit16 v0, p0, -0x100

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method protected abstract adjustDictionaryOffset(I)I
.end method

.method public decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 17
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "res"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 117
    .local v2, "buffer":[B
    invoke-virtual {v0, v2}, Lorg/apache/poi/util/LZWDecompresser;->populateDictionary([B)I

    move-result v3

    .line 122
    .local v3, "pos":I
    iget v4, v0, Lorg/apache/poi/util/LZWDecompresser;->codeLengthIncrease:I

    add-int/lit8 v4, v4, 0x10

    new-array v4, v4, [B

    .line 132
    .local v4, "dataB":[B
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v5

    move v6, v5

    .local v6, "flag":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_7

    .line 134
    const/4 v5, 0x1

    .local v5, "mask":I
    :goto_1
    const/16 v8, 0x100

    if-ge v5, v8, :cond_0

    .line 137
    and-int v8, v6, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 138
    .local v8, "isMaskSet":Z
    :goto_2
    iget-boolean v11, v0, Lorg/apache/poi/util/LZWDecompresser;->maskMeansCompressed:Z

    xor-int/2addr v11, v8

    if-eqz v11, :cond_2

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v11

    move v12, v11

    .local v12, "dataI":I
    if-eq v11, v7, :cond_6

    .line 142
    and-int/lit16 v11, v3, 0xfff

    invoke-static {v12}, Lorg/apache/poi/util/LZWDecompresser;->fromInt(I)B

    move-result v13

    aput-byte v13, v2, v11

    .line 143
    add-int/lit8 v3, v3, 0x1

    .line 145
    new-array v10, v10, [B

    invoke-static {v12}, Lorg/apache/poi/util/LZWDecompresser;->fromInt(I)B

    move-result v11

    aput-byte v11, v10, v9

    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    .line 150
    .end local v12    # "dataI":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 151
    .local v10, "dataIPt1":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v11

    .line 152
    .local v11, "dataIPt2":I
    if-eq v10, v7, :cond_0

    if-ne v11, v7, :cond_3

    goto :goto_0

    .line 158
    :cond_3
    and-int/lit8 v12, v11, 0xf

    iget v13, v0, Lorg/apache/poi/util/LZWDecompresser;->codeLengthIncrease:I

    add-int/2addr v12, v13

    .line 159
    .local v12, "len":I
    iget-boolean v13, v0, Lorg/apache/poi/util/LZWDecompresser;->positionIsBigEndian:Z

    if-eqz v13, :cond_4

    .line 160
    shl-int/lit8 v13, v10, 0x4

    shr-int/lit8 v14, v11, 0x4

    add-int/2addr v13, v14

    .local v13, "pntr":I
    goto :goto_3

    .line 162
    .end local v13    # "pntr":I
    :cond_4
    and-int/lit16 v13, v11, 0xf0

    shl-int/lit8 v13, v13, 0x4

    add-int/2addr v13, v10

    .line 166
    .restart local v13    # "pntr":I
    :goto_3
    invoke-virtual {v0, v13}, Lorg/apache/poi/util/LZWDecompresser;->adjustDictionaryOffset(I)I

    move-result v13

    .line 169
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    if-ge v14, v12, :cond_5

    .line 170
    add-int v15, v13, v14

    and-int/lit16 v15, v15, 0xfff

    aget-byte v15, v2, v15

    aput-byte v15, v4, v14

    .line 171
    add-int v15, v3, v14

    and-int/lit16 v15, v15, 0xfff

    aget-byte v16, v4, v14

    aput-byte v16, v2, v15

    .line 169
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 173
    .end local v14    # "i":I
    :cond_5
    invoke-virtual {v1, v4, v9, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 176
    add-int/2addr v3, v12

    .line 134
    .end local v8    # "isMaskSet":Z
    .end local v10    # "dataIPt1":I
    .end local v11    # "dataIPt2":I
    .end local v12    # "len":I
    .end local v13    # "pntr":I
    :cond_6
    :goto_5
    shl-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 180
    .end local v5    # "mask":I
    :cond_7
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
