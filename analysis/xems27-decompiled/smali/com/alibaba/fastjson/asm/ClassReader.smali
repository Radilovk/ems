.class public Lcom/alibaba/fastjson/asm/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# instance fields
.field public final b:[B

.field public final header:I

.field private final items:[I

.field private final maxStringLength:I

.field private final strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 23
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 24
    .local v2, "len":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 25
    nop

    .line 32
    .end local v2    # "len":I
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 37
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    .line 38
    array-length v0, v0

    .line 39
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "max":I
    const/16 v2, 0xa

    .line 42
    .local v2, "index":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 43
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v4, v3

    .line 45
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/16 v7, 0xf

    if-eq v4, v7, :cond_2

    const/16 v7, 0x12

    if-eq v4, v7, :cond_1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    .line 72
    const/4 v4, 0x3

    .local v4, "size":I
    goto :goto_2

    .line 57
    .end local v4    # "size":I
    :cond_0
    const/16 v4, 0x9

    .line 58
    .restart local v4    # "size":I
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_2

    .line 53
    .end local v4    # "size":I
    :cond_1
    :pswitch_0
    const/4 v4, 0x5

    .line 54
    .restart local v4    # "size":I
    goto :goto_2

    .line 61
    .end local v4    # "size":I
    :cond_2
    const/4 v4, 0x4

    .line 62
    .restart local v4    # "size":I
    goto :goto_2

    .line 64
    .end local v4    # "size":I
    :cond_3
    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    add-int/2addr v4, v5

    .line 65
    .restart local v4    # "size":I
    if-le v4, v1, :cond_4

    .line 66
    move v1, v4

    .line 75
    :cond_4
    :goto_2
    add-int/2addr v2, v4

    .line 42
    .end local v4    # "size":I
    add-int/2addr v3, v6

    goto :goto_1

    .line 77
    .end local v3    # "i":I
    :cond_5
    iput v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    .line 79
    iput v2, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    .line 80
    return-void

    .line 28
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    .local v1, "buf":[B
    .local v2, "len":I
    :cond_6
    if-lez v2, :cond_7

    .line 29
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 31
    .end local v2    # "len":I
    :cond_7
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readInt(I)I
    .locals 3
    .param p1, "index"    # I

    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 248
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I
    .locals 19
    .param p1, "classVisitor"    # Lcom/alibaba/fastjson/asm/TypeCollector;
    .param p2, "c"    # [C
    .param p3, "u"    # I

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 155
    .local v3, "access":I
    add-int/lit8 v4, v2, 0x2

    invoke-direct {v0, v4, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "name":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x4

    invoke-direct {v0, v5, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "desc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 158
    .local v6, "v":I
    const/4 v7, 0x0

    .line 161
    .local v7, "w":I
    add-int/lit8 v8, v2, 0x6

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 162
    .local v8, "j":I
    add-int/lit8 v2, v2, 0x8

    .line 163
    .end local p3    # "u":I
    .local v2, "u":I
    :goto_0
    if-lez v8, :cond_1

    .line 164
    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, "attrName":Ljava/lang/String;
    add-int/lit8 v10, v2, 0x2

    invoke-direct {v0, v10}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v10

    .line 166
    .local v10, "attrSize":I
    add-int/lit8 v2, v2, 0x6

    .line 169
    const-string v11, "Code"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 170
    move v6, v2

    .line 172
    :cond_0
    add-int/2addr v2, v10

    .line 163
    .end local v10    # "attrSize":I
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 175
    .end local v9    # "attrName":Ljava/lang/String;
    :cond_1
    if-nez v7, :cond_2

    goto :goto_2

    .line 177
    :cond_2
    add-int/lit8 v7, v7, 0x2

    .line 178
    const/4 v8, 0x0

    :goto_1
    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 179
    add-int/lit8 v7, v7, 0x2

    .line 178
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 184
    :cond_3
    :goto_2
    move-object/from16 v9, p1

    invoke-virtual {v9, v3, v4, v5}, Lcom/alibaba/fastjson/asm/TypeCollector;->visitMethod(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodCollector;

    move-result-object v10

    .line 186
    .local v10, "mv":Lcom/alibaba/fastjson/asm/MethodCollector;
    if-eqz v10, :cond_b

    if-eqz v6, :cond_b

    .line 187
    add-int/lit8 v11, v6, 0x4

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v11

    .line 188
    .local v11, "codeLength":I
    add-int/lit8 v6, v6, 0x8

    .line 190
    move v12, v6

    .line 191
    .local v12, "codeStart":I
    add-int v13, v6, v11

    .line 192
    .local v13, "codeEnd":I
    move v6, v13

    .line 194
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 195
    add-int/lit8 v6, v6, 0x2

    .line 196
    :goto_3
    if-lez v8, :cond_4

    .line 197
    add-int/lit8 v6, v6, 0x8

    .line 196
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 201
    :cond_4
    const/4 v14, 0x0

    .line 202
    .local v14, "varTable":I
    const/4 v15, 0x0

    .line 203
    .local v15, "varTypeTable":I
    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 204
    add-int/lit8 v6, v6, 0x2

    .line 205
    :goto_4
    if-lez v8, :cond_7

    .line 206
    move/from16 v16, v3

    .end local v3    # "access":I
    .local v16, "access":I
    invoke-direct {v0, v6, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "attrName":Ljava/lang/String;
    move-object/from16 v17, v4

    .end local v4    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    const-string v4, "LocalVariableTable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    add-int/lit8 v4, v6, 0x6

    move v14, v4

    .end local v14    # "varTable":I
    .local v4, "varTable":I
    goto :goto_5

    .line 209
    .end local v4    # "varTable":I
    .restart local v14    # "varTable":I
    :cond_5
    const-string v4, "LocalVariableTypeTable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 210
    add-int/lit8 v4, v6, 0x6

    move v15, v4

    .line 212
    :cond_6
    :goto_5
    add-int/lit8 v4, v6, 0x2

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v6, v4

    .line 205
    add-int/lit8 v8, v8, -0x1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_4

    .line 215
    .end local v16    # "access":I
    .end local v17    # "name":Ljava/lang/String;
    .local v3, "access":I
    .local v4, "name":Ljava/lang/String;
    :cond_7
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "access":I
    .end local v4    # "name":Ljava/lang/String;
    .restart local v16    # "access":I
    .restart local v17    # "name":Ljava/lang/String;
    move v6, v12

    .line 217
    if-eqz v14, :cond_a

    .line 218
    if-eqz v15, :cond_9

    .line 219
    invoke-direct {v0, v15}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    .line 220
    .local v3, "k":I
    add-int/lit8 v4, v15, 0x2

    .line 221
    .end local v7    # "w":I
    .local v4, "w":I
    new-array v7, v3, [I

    .line 222
    .local v7, "typeTable":[I
    :goto_6
    if-lez v3, :cond_8

    .line 223
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v18, v4, 0x6

    aput v18, v7, v3

    .line 224
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v18, v5

    .end local v5    # "desc":Ljava/lang/String;
    .local v18, "desc":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x8

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v7, v3

    .line 225
    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aput v5, v7, v3

    .line 226
    add-int/lit8 v4, v4, 0xa

    move-object/from16 v5, v18

    goto :goto_6

    .line 222
    .end local v18    # "desc":Ljava/lang/String;
    .restart local v5    # "desc":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v5

    .end local v5    # "desc":Ljava/lang/String;
    .restart local v18    # "desc":Ljava/lang/String;
    move v7, v4

    goto :goto_7

    .line 218
    .end local v3    # "k":I
    .end local v4    # "w":I
    .end local v18    # "desc":Ljava/lang/String;
    .restart local v5    # "desc":Ljava/lang/String;
    .local v7, "w":I
    :cond_9
    move-object/from16 v18, v5

    .line 229
    .end local v5    # "desc":Ljava/lang/String;
    .restart local v18    # "desc":Ljava/lang/String;
    :goto_7
    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    .line 230
    .restart local v3    # "k":I
    add-int/lit8 v4, v14, 0x2

    move v7, v4

    .line 231
    :goto_8
    if-lez v3, :cond_c

    .line 232
    add-int/lit8 v4, v7, 0x8

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    .line 233
    .local v4, "index":I
    add-int/lit8 v5, v7, 0x4

    invoke-direct {v0, v5, v1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5, v4}, Lcom/alibaba/fastjson/asm/MethodCollector;->visitLocalVariable(Ljava/lang/String;I)V

    .line 234
    nop

    .end local v4    # "index":I
    add-int/lit8 v7, v7, 0xa

    .line 231
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 217
    .end local v3    # "k":I
    .end local v18    # "desc":Ljava/lang/String;
    .restart local v5    # "desc":Ljava/lang/String;
    :cond_a
    move-object/from16 v18, v5

    .end local v5    # "desc":Ljava/lang/String;
    .restart local v18    # "desc":Ljava/lang/String;
    goto :goto_9

    .line 186
    .end local v11    # "codeLength":I
    .end local v12    # "codeStart":I
    .end local v13    # "codeEnd":I
    .end local v14    # "varTable":I
    .end local v15    # "varTypeTable":I
    .end local v16    # "access":I
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "desc":Ljava/lang/String;
    .local v3, "access":I
    .local v4, "name":Ljava/lang/String;
    .restart local v5    # "desc":Ljava/lang/String;
    :cond_b
    move/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 238
    .end local v3    # "access":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "desc":Ljava/lang/String;
    .restart local v16    # "access":I
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "desc":Ljava/lang/String;
    :cond_c
    :goto_9
    return v2
.end method

.method private readUTF(II[C)Ljava/lang/String;
    .locals 9
    .param p1, "index"    # I
    .param p2, "utfLen"    # I
    .param p3, "buf"    # [C

    .line 263
    add-int v0, p1, p2

    .line 264
    .local v0, "endIndex":I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 265
    .local v1, "b":[B
    const/4 v2, 0x0

    .line 267
    .local v2, "strLen":I
    const/4 v3, 0x0

    .line 268
    .local v3, "st":I
    const/4 v4, 0x0

    .line 269
    .local v4, "cc":C
    :goto_0
    if-ge p1, v0, :cond_5

    .line 270
    add-int/lit8 v5, p1, 0x1

    .end local p1    # "index":I
    .local v5, "index":I
    aget-byte p1, v1, p1

    .line 271
    .local p1, "c":I
    if-eqz v3, :cond_2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    shl-int/lit8 v6, v4, 0x6

    and-int/lit8 v7, p1, 0x3f

    or-int/2addr v6, v7

    int-to-char v4, v6

    .line 292
    const/4 v3, 0x1

    goto :goto_1

    .line 286
    :cond_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "strLen":I
    .local v6, "strLen":I
    shl-int/lit8 v7, v4, 0x6

    and-int/lit8 v8, p1, 0x3f

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p3, v2

    .line 287
    const/4 v2, 0x0

    .line 288
    .end local v3    # "st":I
    .local v2, "st":I
    move v3, v2

    move v2, v6

    goto :goto_1

    .line 273
    .end local v6    # "strLen":I
    .local v2, "strLen":I
    .restart local v3    # "st":I
    :cond_2
    and-int/lit16 p1, p1, 0xff

    .line 274
    const/16 v6, 0x80

    if-ge p1, v6, :cond_3

    .line 275
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "strLen":I
    .restart local v6    # "strLen":I
    int-to-char v7, p1

    aput-char v7, p3, v2

    move v2, v6

    goto :goto_1

    .line 276
    .end local v6    # "strLen":I
    .restart local v2    # "strLen":I
    :cond_3
    const/16 v6, 0xe0

    if-ge p1, v6, :cond_4

    const/16 v6, 0xbf

    if-le p1, v6, :cond_4

    .line 277
    and-int/lit8 v6, p1, 0x1f

    int-to-char v4, v6

    .line 278
    const/4 v3, 0x1

    goto :goto_1

    .line 280
    :cond_4
    and-int/lit8 v6, p1, 0xf

    int-to-char v4, v6

    .line 281
    const/4 v3, 0x2

    .line 283
    nop

    .line 293
    :goto_1
    move p1, v5

    goto :goto_0

    .line 296
    .end local v5    # "index":I
    .local p1, "index":I
    :cond_5
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, p3, v6, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v5
.end method

.method private readUTF8(I[C)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .line 253
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    .line 254
    .local v0, "item":I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassReader;->strings:[Ljava/lang/String;

    aget-object v2, v1, v0

    .line 255
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 256
    return-object v2

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    aget p1, v3, v0

    .line 259
    add-int/lit8 v3, p1, 0x2

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/alibaba/fastjson/asm/ClassReader;->readUTF(II[C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    return-object v3
.end method

.method private readUnsignedShort(I)I
    .locals 3
    .param p1, "index"    # I

    .line 242
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->b:[B

    .line 243
    .local v0, "b":[B
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson/asm/TypeCollector;)V
    .locals 10
    .param p1, "classVisitor"    # Lcom/alibaba/fastjson/asm/TypeCollector;

    .line 83
    iget v0, p0, Lcom/alibaba/fastjson/asm/ClassReader;->maxStringLength:I

    new-array v0, v0, [C

    .line 88
    .local v0, "c":[C
    const/4 v1, 0x0

    .line 89
    .local v1, "anns":I
    const/4 v2, 0x0

    .line 92
    .local v2, "ianns":I
    iget v3, p0, Lcom/alibaba/fastjson/asm/ClassReader;->header:I

    .line 93
    .local v3, "u":I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassReader;->items:[I

    add-int/lit8 v5, v3, 0x4

    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    aget v4, v4, v5

    .line 94
    .local v4, "v":I
    add-int/lit8 v5, v3, 0x6

    invoke-direct {p0, v5}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .line 95
    .local v5, "len":I
    const/4 v6, 0x0

    .line 96
    .local v6, "w":I
    add-int/lit8 v3, v3, 0x8

    .line 97
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 98
    add-int/lit8 v3, v3, 0x2

    .line 97
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 100
    :cond_0
    move v4, v3

    .line 101
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 102
    add-int/lit8 v4, v4, 0x2

    .line 103
    :goto_1
    if-lez v7, :cond_2

    .line 104
    add-int/lit8 v8, v4, 0x6

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 105
    .local v8, "j":I
    add-int/lit8 v4, v4, 0x8

    .line 106
    :goto_2
    if-lez v8, :cond_1

    .line 107
    add-int/lit8 v9, v4, 0x2

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v4, v9

    .line 106
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 103
    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 110
    .end local v8    # "j":I
    :cond_2
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 111
    add-int/lit8 v4, v4, 0x2

    .line 112
    :goto_3
    if-lez v7, :cond_4

    .line 113
    add-int/lit8 v8, v4, 0x6

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 114
    .restart local v8    # "j":I
    add-int/lit8 v4, v4, 0x8

    .line 115
    :goto_4
    if-lez v8, :cond_3

    .line 116
    add-int/lit8 v9, v4, 0x2

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v4, v9

    .line 115
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 112
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 120
    .end local v8    # "j":I
    :cond_4
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 121
    add-int/lit8 v4, v4, 0x2

    .line 122
    :goto_5
    if-lez v7, :cond_5

    .line 123
    add-int/lit8 v8, v4, 0x2

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v4, v8

    .line 122
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 129
    :cond_5
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 130
    add-int/lit8 v3, v3, 0x2

    .line 131
    :goto_6
    if-lez v7, :cond_7

    .line 132
    add-int/lit8 v8, v3, 0x6

    invoke-direct {p0, v8}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 133
    .restart local v8    # "j":I
    add-int/lit8 v3, v3, 0x8

    .line 134
    :goto_7
    if-lez v8, :cond_6

    .line 135
    add-int/lit8 v9, v3, 0x2

    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/asm/ClassReader;->readInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x6

    add-int/2addr v3, v9

    .line 134
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 131
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 140
    .end local v8    # "j":I
    :cond_7
    invoke-direct {p0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    .line 141
    add-int/lit8 v3, v3, 0x2

    .line 142
    :goto_8
    if-lez v7, :cond_8

    .line 144
    invoke-direct {p0, p1, v0, v3}, Lcom/alibaba/fastjson/asm/ClassReader;->readMethod(Lcom/alibaba/fastjson/asm/TypeCollector;[CI)I

    move-result v3

    .line 142
    add-int/lit8 v7, v7, -0x1

    goto :goto_8

    .line 146
    :cond_8
    return-void
.end method
