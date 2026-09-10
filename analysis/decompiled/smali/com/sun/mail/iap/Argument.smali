.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field protected items:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    .line 61
    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/iap/Argument;->nastring([BLcom/sun/mail/iap/Protocol;Z)V

    .line 261
    return-void
.end method

.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    .line 360
    return-void
.end method

.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 352
    return-void
.end method

.method private literal([BLcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 343
    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 344
    return-void
.end method

.method private nastring([BLcom/sun/mail/iap/Protocol;Z)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .param p3, "doQuote"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    check-cast v4, Ljava/io/DataOutputStream;

    .line 278
    .local v4, "os":Ljava/io/DataOutputStream;
    array-length v3, p1

    .line 281
    .local v3, "len":I
    const/16 v6, 0x400

    if-le v3, v6, :cond_1

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-nez v3, :cond_7

    const/4 v5, 0x1

    .line 288
    .local v5, "quote":Z
    :goto_1
    const/4 v1, 0x0

    .line 291
    .local v1, "escape":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v3, :cond_8

    .line 313
    if-nez v5, :cond_5

    array-length v6, p1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 314
    const/4 v6, 0x0

    aget-byte v6, p1, v6

    const/16 v7, 0x4e

    if-eq v6, v7, :cond_2

    const/4 v6, 0x0

    aget-byte v6, p1, v6

    const/16 v7, 0x6e

    if-ne v6, v7, :cond_5

    .line 315
    :cond_2
    const/4 v6, 0x1

    aget-byte v6, p1, v6

    const/16 v7, 0x49

    if-eq v6, v7, :cond_3

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    const/16 v7, 0x69

    if-ne v6, v7, :cond_5

    .line 316
    :cond_3
    const/4 v6, 0x2

    aget-byte v6, p1, v6

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_4

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_5

    .line 317
    :cond_4
    const/4 v5, 0x1

    .line 319
    :cond_5
    if-eqz v5, :cond_6

    .line 320
    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 322
    :cond_6
    if-eqz v1, :cond_11

    .line 324
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v3, :cond_e

    .line 334
    :goto_4
    if-eqz v5, :cond_0

    .line 335
    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .end local v1    # "escape":Z
    .end local v2    # "i":I
    .end local v5    # "quote":Z
    :cond_7
    move v5, p3

    .line 287
    goto :goto_1

    .line 292
    .restart local v1    # "escape":Z
    .restart local v2    # "i":I
    .restart local v5    # "quote":Z
    :cond_8
    aget-byte v0, p1, v2

    .line 293
    .local v0, "b":B
    if-eqz v0, :cond_9

    const/16 v6, 0xd

    if-eq v0, v6, :cond_9

    const/16 v6, 0xa

    if-eq v0, v6, :cond_9

    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x7f

    if-le v6, v7, :cond_a

    .line 295
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_0

    .line 298
    :cond_a
    const/16 v6, 0x2a

    if-eq v0, v6, :cond_b

    const/16 v6, 0x25

    if-eq v0, v6, :cond_b

    const/16 v6, 0x28

    if-eq v0, v6, :cond_b

    const/16 v6, 0x29

    if-eq v0, v6, :cond_b

    const/16 v6, 0x7b

    if-eq v0, v6, :cond_b

    .line 299
    const/16 v6, 0x22

    if-eq v0, v6, :cond_b

    const/16 v6, 0x5c

    if-eq v0, v6, :cond_b

    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x20

    if-gt v6, v7, :cond_d

    .line 300
    :cond_b
    const/4 v5, 0x1

    .line 301
    const/16 v6, 0x22

    if-eq v0, v6, :cond_c

    const/16 v6, 0x5c

    if-ne v0, v6, :cond_d

    .line 302
    :cond_c
    const/4 v1, 0x1

    .line 291
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 325
    .end local v0    # "b":B
    :cond_e
    aget-byte v0, p1, v2

    .line 326
    .restart local v0    # "b":B
    const/16 v6, 0x22

    if-eq v0, v6, :cond_f

    const/16 v6, 0x5c

    if-ne v0, v6, :cond_10

    .line 327
    :cond_f
    const/16 v6, 0x5c

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 328
    :cond_10
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 331
    .end local v0    # "b":B
    :cond_11
    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_4
.end method

.method private nstring([BLcom/sun/mail/iap/Protocol;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 270
    .local v0, "os":Ljava/io/DataOutputStream;
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 273
    .end local v0    # "os":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/sun/mail/iap/Argument;->nastring([BLcom/sun/mail/iap/Protocol;Z)V

    goto :goto_0
.end method

.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    .line 365
    .local v1, "os":Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v0

    .line 367
    .local v0, "nonSync":Z
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 368
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 369
    if-eqz v0, :cond_2

    .line 370
    const-string v3, "+}\r\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 373
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 377
    if-nez v0, :cond_1

    .line 379
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 380
    .local v2, "r":Lcom/sun/mail/iap/Response;
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 388
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_1
    return-object v1

    .line 372
    :cond_2
    const-string/jumbo v3, "}\r\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    .restart local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_3
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    new-instance v3, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {v3, v2}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v3
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "arg"    # Lcom/sun/mail/iap/Argument;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    return-object p0
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .locals 5
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 226
    .local v3, "size":I
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Ljava/io/DataOutputStream;

    .line 228
    .local v2, "os":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_1

    .line 253
    return-void

    .line 225
    .end local v0    # "i":I
    .end local v2    # "os":Ljava/io/DataOutputStream;
    .end local v3    # "size":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 229
    .restart local v0    # "i":I
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "size":I
    :cond_1
    if-lez v0, :cond_2

    .line 230
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 232
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 233
    .local v1, "o":Ljava/lang/Object;
    instance-of v4, v1, Lcom/sun/mail/iap/Atom;

    if-eqz v4, :cond_4

    .line 234
    check-cast v1, Lcom/sun/mail/iap/Atom;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v4, v1, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 228
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_5

    .line 236
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 237
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v4, v1, Lcom/sun/mail/iap/AString;

    if-eqz v4, :cond_6

    .line 238
    check-cast v1, Lcom/sun/mail/iap/AString;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v4, v1, Lcom/sun/mail/iap/AString;->bytes:[B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 239
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v4, v1, Lcom/sun/mail/iap/NString;

    if-eqz v4, :cond_7

    .line 240
    check-cast v1, Lcom/sun/mail/iap/NString;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v4, v1, Lcom/sun/mail/iap/NString;->bytes:[B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->nstring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 241
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_7
    instance-of v4, v1, [B

    if-eqz v4, :cond_8

    .line 242
    check-cast v1, [B

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 243
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_8
    instance-of v4, v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_9

    .line 244
    check-cast v1, Ljava/io/ByteArrayOutputStream;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 245
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_9
    instance-of v4, v1, Lcom/sun/mail/iap/Literal;

    if-eqz v4, :cond_a

    .line 246
    check-cast v1, Lcom/sun/mail/iap/Literal;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {p0, v1, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 247
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_a
    instance-of v4, v1, Lcom/sun/mail/iap/Argument;

    if-eqz v4, :cond_3

    .line 248
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 249
    check-cast v1, Lcom/sun/mail/iap/Argument;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    .line 250
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_2
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    .locals 1
    .param p1, "c"    # Lcom/sun/mail/iap/Argument;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-object p0
.end method

.method public writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/Atom;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-object p0
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/iap/Argument;
    .locals 1
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)Lcom/sun/mail/iap/Argument;
    .locals 1
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-object p0
.end method

.method public writeBytes([B)Lcom/sun/mail/iap/Argument;
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object p0
.end method

.method public writeNString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_0
    return-object p0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeNString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :goto_0
    return-object p0

    .line 140
    :cond_0
    if-nez p2, :cond_1

    .line 141
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeNumber(I)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-object p0
.end method

.method public writeNumber(J)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "i"    # J

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-object p0
.end method

.method public writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 106
    :goto_0
    return-object p0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
