.class public Lcom/alibaba/fastjson/asm/ClassWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"


# instance fields
.field private access:I

.field firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

.field firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

.field index:I

.field private interfaceCount:I

.field private interfaces:[I

.field items:[Lcom/alibaba/fastjson/asm/Item;

.field final key:Lcom/alibaba/fastjson/asm/Item;

.field final key2:Lcom/alibaba/fastjson/asm/Item;

.field final key3:Lcom/alibaba/fastjson/asm/Item;

.field lastField:Lcom/alibaba/fastjson/asm/FieldWriter;

.field lastMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

.field private name:I

.field final pool:Lcom/alibaba/fastjson/asm/ByteVector;

.field private superName:I

.field thisName:Ljava/lang/String;

.field threshold:I

.field typeTable:[Lcom/alibaba/fastjson/asm/Item;

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>(I)V

    .line 148
    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .param p1, "flags"    # I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    .line 152
    new-instance v0, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    .line 153
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/alibaba/fastjson/asm/Item;

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    .line 154
    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    .line 155
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    .line 156
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    .line 157
    new-instance v0, Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Item;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    .line 158
    return-void
.end method

.method private get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;
    .locals 3
    .param p1, "key"    # Lcom/alibaba/fastjson/asm/Item;

    .line 362
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    iget v1, p1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 363
    .local v0, "i":Lcom/alibaba/fastjson/asm/Item;
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->type:I

    iget v2, p1, Lcom/alibaba/fastjson/asm/Item;->type:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/asm/Item;->isEqualTo(Lcom/alibaba/fastjson/asm/Item;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    goto :goto_0

    .line 366
    :cond_1
    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 339
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 340
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 341
    new-instance v1, Lcom/alibaba/fastjson/asm/Item;

    iget v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    move-object v0, v1

    .line 342
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 344
    :cond_0
    return-object v0
.end method

.method private put(Lcom/alibaba/fastjson/asm/Item;)V
    .locals 8
    .param p1, "i"    # Lcom/alibaba/fastjson/asm/Item;

    .line 370
    iget v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    if-le v0, v1, :cond_2

    .line 371
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v0, v0

    .line 372
    .local v0, "ll":I
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 373
    .local v1, "nl":I
    new-array v2, v1, [Lcom/alibaba/fastjson/asm/Item;

    .line 374
    .local v2, "newItems":[Lcom/alibaba/fastjson/asm/Item;
    add-int/lit8 v3, v0, -0x1

    .local v3, "l":I
    :goto_0
    if-ltz v3, :cond_1

    .line 375
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aget-object v4, v4, v3

    .line 376
    .local v4, "j":Lcom/alibaba/fastjson/asm/Item;
    :goto_1
    if-eqz v4, :cond_0

    .line 377
    iget v5, v4, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    array-length v6, v2

    rem-int/2addr v5, v6

    .line 378
    .local v5, "index":I
    iget-object v6, v4, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 379
    .local v6, "k":Lcom/alibaba/fastjson/asm/Item;
    aget-object v7, v2, v5

    iput-object v7, v4, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 380
    aput-object v4, v2, v5

    .line 381
    move-object v4, v6

    .line 382
    .end local v5    # "index":I
    .end local v6    # "k":Lcom/alibaba/fastjson/asm/Item;
    goto :goto_1

    .line 374
    .end local v4    # "j":Lcom/alibaba/fastjson/asm/Item;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 384
    .end local v3    # "l":I
    :cond_1
    iput-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    .line 385
    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double v3, v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->threshold:I

    .line 387
    .end local v0    # "ll":I
    .end local v1    # "nl":I
    .end local v2    # "newItems":[Lcom/alibaba/fastjson/asm/Item;
    :cond_2
    iget v0, p1, Lcom/alibaba/fastjson/asm/Item;->hashCode:I

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 388
    .local v0, "index":I
    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/alibaba/fastjson/asm/Item;->next:Lcom/alibaba/fastjson/asm/Item;

    .line 389
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->items:[Lcom/alibaba/fastjson/asm/Item;

    aput-object p1, v1, v0

    .line 390
    return-void
.end method


# virtual methods
.method public newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 282
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 283
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 284
    new-instance v1, Lcom/alibaba/fastjson/asm/Item;

    iget v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    move-object v0, v1

    .line 285
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 287
    :cond_0
    return-object v0
.end method

.method newConstItem(Ljava/lang/Object;)Lcom/alibaba/fastjson/asm/Item;
    .locals 5
    .param p1, "cst"    # Ljava/lang/Object;

    .line 247
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 248
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    .local v0, "val":I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/asm/Item;->set(I)V

    .line 251
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v1

    .line 252
    .local v1, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v1, :cond_0

    .line 253
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 254
    new-instance v2, Lcom/alibaba/fastjson/asm/Item;

    iget v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    move-object v1, v2

    .line 255
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 257
    :cond_0
    return-object v1

    .line 258
    .end local v0    # "val":I
    .end local v1    # "result":Lcom/alibaba/fastjson/asm/Item;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 259
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->newString(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    return-object v0

    .line 260
    :cond_2
    instance-of v0, p1, Lcom/alibaba/fastjson/asm/Type;

    if-eqz v0, :cond_4

    .line 261
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/asm/Type;

    .line 262
    .local v0, "t":Lcom/alibaba/fastjson/asm/Type;
    iget v1, v0, Lcom/alibaba/fastjson/asm/Type;->sort:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v1

    return-object v1

    .line 264
    .end local v0    # "t":Lcom/alibaba/fastjson/asm/Type;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newFieldItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 6
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 302
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/fastjson/asm/Item;->index:I

    .local v2, "s1":I
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/fastjson/asm/Item;->index:I

    .line 305
    .local v3, "s2":I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v4, v1, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 306
    new-instance v1, Lcom/alibaba/fastjson/asm/Item;

    iget v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    move-object v0, v1

    .line 307
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 309
    .end local v2    # "s1":I
    .end local v3    # "s2":I
    :cond_0
    return-object v0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/fastjson/asm/Item;
    .locals 7
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .line 323
    if-eqz p4, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 324
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v1

    .line 326
    .local v1, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v1, :cond_1

    .line 328
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/fastjson/asm/Item;->index:I

    .local v2, "s1":I
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/fastjson/asm/Item;->index:I

    .line 329
    .local v3, "s2":I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 330
    new-instance v4, Lcom/alibaba/fastjson/asm/Item;

    iget v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v6, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key3:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v4, v5, v6}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    move-object v1, v4

    .line 331
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 333
    .end local v2    # "s1":I
    .end local v3    # "s2":I
    :cond_1
    return-object v1
.end method

.method public newNameTypeItem(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 350
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    .local v2, "s1":I
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    .line 353
    .local v3, "s2":I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v4, v1, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->put12(II)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 354
    new-instance v1, Lcom/alibaba/fastjson/asm/Item;

    iget v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v5, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key2:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v1, v4, v5}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    move-object v0, v1

    .line 355
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 357
    .end local v2    # "s1":I
    .end local v3    # "s2":I
    :cond_0
    return-object v0
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/alibaba/fastjson/asm/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->get(Lcom/alibaba/fastjson/asm/Item;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    .line 271
    .local v0, "result":Lcom/alibaba/fastjson/asm/Item;
    if-nez v0, :cond_0

    .line 272
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 273
    new-instance v1, Lcom/alibaba/fastjson/asm/Item;

    iget v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->key:Lcom/alibaba/fastjson/asm/Item;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/fastjson/asm/Item;-><init>(ILcom/alibaba/fastjson/asm/Item;)V

    move-object v0, v1

    .line 274
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/asm/ClassWriter;->put(Lcom/alibaba/fastjson/asm/Item;)V

    .line 276
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    return v1
.end method

.method public toByteArray()[B
    .locals 11

    .line 190
    iget v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x18

    .line 191
    .local v0, "size":I
    const/4 v1, 0x0

    .line 192
    .local v1, "nbFields":I
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 193
    .local v2, "fb":Lcom/alibaba/fastjson/asm/FieldWriter;
    :goto_0
    if-eqz v2, :cond_0

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 195
    invoke-virtual {v2}, Lcom/alibaba/fastjson/asm/FieldWriter;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 196
    iget-object v2, v2, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_0

    .line 198
    :cond_0
    const/4 v3, 0x0

    .line 199
    .local v3, "nbMethods":I
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 200
    .local v4, "mb":Lcom/alibaba/fastjson/asm/MethodWriter;
    :goto_1
    if-eqz v4, :cond_1

    .line 201
    add-int/lit8 v3, v3, 0x1

    .line 202
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/MethodWriter;->getSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 203
    iget-object v4, v4, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_1

    .line 205
    :cond_1
    const/4 v5, 0x0

    .line 206
    .local v5, "attributeCount":I
    iget-object v6, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v6, v6, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, v6

    .line 209
    new-instance v6, Lcom/alibaba/fastjson/asm/ByteVector;

    invoke-direct {v6, v0}, Lcom/alibaba/fastjson/asm/ByteVector;-><init>(I)V

    .line 210
    .local v6, "out":Lcom/alibaba/fastjson/asm/ByteVector;
    const v7, -0x35014542    # -8346975.0f

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->version:I

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 211
    iget v7, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->index:I

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget-object v8, v8, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->pool:Lcom/alibaba/fastjson/asm/ByteVector;

    iget v10, v10, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/alibaba/fastjson/asm/ByteVector;->putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 212
    const/high16 v7, 0x60000

    .line 213
    .local v7, "mask":I
    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    not-int v9, v7

    and-int/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v8

    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->name:I

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    move-result-object v8

    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->superName:I

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 214
    iget v8, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 215
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    if-ge v8, v9, :cond_2

    .line 216
    iget-object v9, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    aget v9, v9, v8

    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 215
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 218
    .end local v8    # "i":I
    :cond_2
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 219
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstField:Lcom/alibaba/fastjson/asm/FieldWriter;

    .line 220
    :goto_3
    if-eqz v2, :cond_3

    .line 221
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/asm/FieldWriter;->put(Lcom/alibaba/fastjson/asm/ByteVector;)V

    .line 222
    iget-object v2, v2, Lcom/alibaba/fastjson/asm/FieldWriter;->next:Lcom/alibaba/fastjson/asm/FieldWriter;

    goto :goto_3

    .line 224
    :cond_3
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 225
    iget-object v4, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->firstMethod:Lcom/alibaba/fastjson/asm/MethodWriter;

    .line 226
    :goto_4
    if-eqz v4, :cond_4

    .line 227
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/asm/MethodWriter;->put(Lcom/alibaba/fastjson/asm/ByteVector;)V

    .line 228
    iget-object v4, v4, Lcom/alibaba/fastjson/asm/MethodWriter;->next:Lcom/alibaba/fastjson/asm/MethodWriter;

    goto :goto_4

    .line 230
    :cond_4
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 231
    iget-object v8, v6, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    return-object v8
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .line 165
    iput p1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->version:I

    .line 166
    iput p2, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->access:I

    .line 167
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->name:I

    .line 168
    iput-object p3, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->thisName:Ljava/lang/String;

    .line 169
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/fastjson/asm/Item;->index:I

    :goto_0
    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->superName:I

    .line 170
    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    .line 171
    array-length v0, p5

    iput v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    .line 172
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ClassWriter;->interfaces:[I

    aget-object v2, p5, v0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->newClassItem(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Item;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/fastjson/asm/Item;->index:I

    aput v2, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
