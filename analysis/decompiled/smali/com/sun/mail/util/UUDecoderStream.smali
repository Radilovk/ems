.class public Lcom/sun/mail/util/UUDecoderStream;
.super Ljava/io/FilterInputStream;
.source "UUDecoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private gotEnd:Z

.field private gotPrefix:Z

.field private ignoreErrors:Z

.field private ignoreMissingBeginEnd:Z

.field private index:I

.field private lin:Lcom/sun/mail/util/LineInputStream;

.field private mode:I

.field private name:Ljava/lang/String;

.field private readAhead:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    .line 60
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 81
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    .line 84
    const-string v0, "mail.mime.uudecode.ignoreerrors"

    .line 83
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    .line 87
    const-string v0, "mail.mime.uudecode.ignoremissingbeginend"

    .line 86
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZZ)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ignoreErrors"    # Z
    .param p3, "ignoreMissingBeginEnd"    # Z

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    .line 60
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 99
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    .line 100
    iput-boolean p2, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    .line 101
    iput-boolean p3, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    .line 102
    return-void
.end method

.method private decode()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 235
    iget-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    if-eqz v9, :cond_0

    .line 336
    :goto_0
    return v7

    .line 237
    :cond_0
    iput v7, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 238
    const/4 v2, 0x0

    .line 245
    .local v2, "count":I
    :cond_1
    iget-object v9, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 246
    iget-object v5, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    .line 247
    .local v5, "line":Ljava/lang/String;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    .line 256
    :goto_1
    if-nez v5, :cond_4

    .line 257
    iget-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-nez v9, :cond_3

    .line 258
    new-instance v7, Lcom/sun/mail/util/DecodingException;

    .line 259
    const-string v8, "UUDecoder: Missing end at EOF"

    .line 258
    invoke-direct {v7, v8}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 249
    .end local v5    # "line":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v9}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "line":Ljava/lang/String;
    goto :goto_1

    .line 260
    :cond_3
    iput-boolean v8, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto :goto_0

    .line 263
    :cond_4
    const-string v9, "end"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 264
    iput-boolean v8, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto :goto_0

    .line 267
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 269
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 270
    const/16 v9, 0x20

    if-ge v2, v9, :cond_6

    .line 271
    iget-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-nez v9, :cond_1

    .line 272
    new-instance v7, Lcom/sun/mail/util/DecodingException;

    .line 273
    const-string v8, "UUDecoder: Buffer format error"

    .line 272
    invoke-direct {v7, v8}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 283
    :cond_6
    add-int/lit8 v9, v2, -0x20

    and-int/lit8 v2, v9, 0x3f

    .line 285
    if-nez v2, :cond_9

    .line 286
    iget-object v9, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v9}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 287
    if-eqz v5, :cond_7

    const-string v9, "end"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 288
    :cond_7
    iget-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-nez v9, :cond_8

    .line 289
    new-instance v7, Lcom/sun/mail/util/DecodingException;

    .line 290
    const-string v8, "UUDecoder: Missing End after count 0 line"

    .line 289
    invoke-direct {v7, v8}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 292
    :cond_8
    iput-boolean v8, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto :goto_0

    .line 296
    :cond_9
    mul-int/lit8 v9, v2, 0x8

    add-int/lit8 v9, v9, 0x5

    div-int/lit8 v6, v9, 0x6

    .line 298
    .local v6, "need":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v6, 0x1

    if-ge v9, v10, :cond_a

    .line 299
    iget-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-nez v9, :cond_1

    .line 300
    new-instance v7, Lcom/sun/mail/util/DecodingException;

    .line 301
    const-string v8, "UUDecoder: Short buffer error"

    .line 300
    invoke-direct {v7, v8}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 309
    :cond_a
    const/4 v3, 0x1

    .line 317
    .local v3, "i":I
    :cond_b
    :goto_2
    iget v7, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v7, v2, :cond_c

    move v7, v8

    .line 336
    goto/16 :goto_0

    .line 319
    :cond_c
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x20

    and-int/lit8 v7, v7, 0x3f

    int-to-byte v0, v7

    .line 320
    .local v0, "a":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x20

    and-int/lit8 v7, v7, 0x3f

    int-to-byte v1, v7

    .line 321
    .local v1, "b":B
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v10, v0, 0x2

    and-int/lit16 v10, v10, 0xfc

    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 323
    iget v7, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v7, v2, :cond_d

    .line 324
    move v0, v1

    .line 325
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x20

    and-int/lit8 v7, v7, 0x3f

    int-to-byte v1, v7

    .line 326
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 327
    shl-int/lit8 v10, v0, 0x4

    and-int/lit16 v10, v10, 0xf0

    ushr-int/lit8 v11, v1, 0x2

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    int-to-byte v10, v10

    .line 326
    aput-byte v10, v7, v9

    move v3, v4

    .line 330
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_d
    iget v7, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v7, v2, :cond_b

    .line 331
    move v0, v1

    .line 332
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x20

    and-int/lit8 v7, v7, 0x3f

    int-to-byte v1, v7

    .line 333
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v10, v0, 0x6

    and-int/lit16 v10, v10, 0xc0

    and-int/lit8 v11, v1, 0x3f

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2
.end method

.method private readPrefix()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 180
    iget-boolean v2, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    if-eqz v2, :cond_0

    .line 231
    :goto_0
    return-void

    .line 183
    :cond_0
    const/16 v2, 0x1b6

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    .line 184
    const-string v2, "encoder.buf"

    iput-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 190
    iget-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-nez v1, :cond_2

    .line 191
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    const-string v2, "UUDecoder: Missing begin"

    invoke-direct {v1, v2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_2
    iput-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 194
    iput-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto :goto_0

    .line 197
    :cond_3
    const-string v3, "begin"

    const/4 v5, 0x5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 199
    const/4 v1, 0x6

    const/16 v2, 0x9

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_6

    .line 206
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    .line 212
    :cond_5
    iput-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    goto :goto_0

    .line 200
    :catch_0
    move-exception v7

    .line 201
    .local v7, "ex":Ljava/lang/NumberFormatException;
    iget-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-nez v1, :cond_4

    .line 202
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder: Error in mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-direct {v1, v2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :cond_6
    iget-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-nez v1, :cond_5

    .line 209
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder: Missing name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-direct {v1, v2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_7
    iget-boolean v2, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 216
    .local v6, "count":I
    add-int/lit8 v2, v6, -0x20

    and-int/lit8 v6, v2, 0x3f

    .line 217
    mul-int/lit8 v2, v6, 0x8

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v8, v2, 0x6

    .line 218
    .local v8, "need":I
    if-eqz v8, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v8, 0x1

    if-lt v2, v3, :cond_1

    .line 225
    :cond_8
    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    .line 226
    iput-boolean v9, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 171
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 159
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 120
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->decode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, -0x1

    .line 124
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p3, :cond_1

    .line 137
    :cond_0
    :goto_1
    return v1

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 131
    if-nez v1, :cond_0

    .line 132
    const/4 v1, -0x1

    .line 133
    goto :goto_1

    .line 135
    :cond_2
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
