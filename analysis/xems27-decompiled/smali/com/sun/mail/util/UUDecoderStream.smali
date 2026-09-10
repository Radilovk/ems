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

    .line 80
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 81
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    .line 83
    nop

    .line 84
    nop

    .line 83
    const-string v1, "mail.mime.uudecode.ignoreerrors"

    invoke-static {v1, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    .line 86
    nop

    .line 87
    nop

    .line 86
    const-string v1, "mail.mime.uudecode.ignoremissingbeginend"

    invoke-static {v1, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZZ)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ignoreErrors"    # Z
    .param p3, "ignoreMissingBeginEnd"    # Z

    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

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

    .line 235
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    return v1

    .line 237
    :cond_0
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 238
    const/4 v0, 0x0

    .line 245
    .local v0, "count":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    .line 247
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    .line 248
    goto :goto_1

    .line 249
    .end local v2    # "line":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 256
    .restart local v2    # "line":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 257
    iget-boolean v4, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v4, :cond_2

    .line 260
    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 261
    return v1

    .line 258
    :cond_2
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    .line 259
    nop

    .line 258
    const-string v3, "UUDecoder: Missing end at EOF"

    invoke-direct {v1, v3}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_3
    const-string v4, "end"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 264
    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 265
    return v1

    .line 267
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 268
    goto :goto_0

    .line 269
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 270
    const/16 v5, 0x20

    if-ge v0, v5, :cond_7

    .line 271
    iget-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-eqz v3, :cond_6

    goto :goto_0

    .line 272
    :cond_6
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    .line 273
    nop

    .line 272
    const-string v3, "UUDecoder: Buffer format error"

    invoke-direct {v1, v3}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_7
    add-int/lit8 v6, v0, -0x20

    and-int/lit8 v0, v6, 0x3f

    .line 285
    if-nez v0, :cond_b

    .line 286
    iget-object v5, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 288
    :cond_8
    iget-boolean v4, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v4, :cond_a

    .line 292
    :cond_9
    iput-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 293
    return v1

    .line 289
    :cond_a
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    .line 290
    nop

    .line 289
    const-string v3, "UUDecoder: Missing End after count 0 line"

    invoke-direct {v1, v3}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_b
    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x6

    .line 298
    .local v4, "need":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-ge v6, v7, :cond_d

    .line 299
    iget-boolean v3, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-eqz v3, :cond_c

    goto/16 :goto_0

    .line 300
    :cond_c
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    .line 301
    nop

    .line 300
    const-string v3, "UUDecoder: Short buffer error"

    invoke-direct {v1, v3}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .end local v4    # "need":I
    :cond_d
    const/4 v1, 0x1

    .line 317
    .local v1, "i":I
    nop

    :goto_2
    iget v4, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v4, v0, :cond_e

    .line 336
    return v3

    .line 319
    :cond_e
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    .line 320
    .local v1, "a":B
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    .line 321
    .local v4, "b":B
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v10, v1, 0x2

    and-int/lit16 v10, v10, 0xfc

    ushr-int/lit8 v11, v4, 0x4

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v7, v8

    .line 323
    if-ge v9, v0, :cond_f

    .line 324
    move v1, v4

    .line 325
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v5

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v4, v6

    .line 326
    iget-object v6, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 327
    shl-int/lit8 v9, v1, 0x4

    and-int/lit16 v9, v9, 0xf0

    ushr-int/lit8 v10, v4, 0x2

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .line 326
    aput-byte v9, v6, v8

    move v6, v7

    .line 330
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_f
    iget v7, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v7, v0, :cond_10

    .line 331
    move v1, v4

    .line 332
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v5

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v4, v6

    .line 333
    iget-object v6, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v9, v1, 0x6

    and-int/lit16 v9, v9, 0xc0

    and-int/lit8 v10, v4, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    move v1, v7

    goto :goto_2

    .line 330
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_10
    move v1, v6

    goto :goto_2
.end method

.method private readPrefix()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    if-eqz v0, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    const/16 v0, 0x1b6

    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    .line 184
    const-string v0, "encoder.buf"

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    .line 188
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "line":Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v0, :cond_3

    .line 190
    iget-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v1, :cond_2

    .line 193
    iput-boolean v7, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 194
    iput-boolean v7, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 195
    goto/16 :goto_3

    .line 191
    :cond_2
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    const-string v2, "UUDecoder: Missing begin"

    invoke-direct {v1, v2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v4, "begin"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_7

    .line 199
    const/16 v1, 0x9

    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_1

    :catch_0
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/NumberFormatException;
    iget-boolean v2, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-eqz v2, :cond_6

    .line 205
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_4

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    .line 207
    goto :goto_2

    .line 208
    :cond_4
    iget-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-eqz v1, :cond_5

    .line 212
    :goto_2
    iput-boolean v7, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 213
    goto :goto_3

    .line 209
    :cond_5
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder: Missing name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-direct {v1, v2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v2, Lcom/sun/mail/util/DecodingException;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UUDecoder: Error in mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-direct {v2, v3}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    iget-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 216
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x20

    and-int/lit8 v1, v3, 0x3f

    .line 217
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x5

    div-int/2addr v3, v2

    .line 218
    .local v3, "need":I
    if-eqz v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v4, v3, 0x1

    if-lt v2, v4, :cond_1

    .line 225
    :cond_8
    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    .line 226
    iput-boolean v7, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 231
    .end local v1    # "count":I
    .end local v3    # "need":I
    :goto_3
    return-void

    .line 214
    :cond_9
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

    .line 158
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 159
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

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

    return v0
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

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 131
    if-nez v0, :cond_1

    .line 132
    const/4 v0, -0x1

    .line 137
    .end local v2    # "c":I
    :cond_1
    :goto_1
    return v0

    .line 135
    .restart local v2    # "c":I
    :cond_2
    add-int v1, p2, v0

    int-to-byte v3, v2

    aput-byte v3, p1, v1

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
