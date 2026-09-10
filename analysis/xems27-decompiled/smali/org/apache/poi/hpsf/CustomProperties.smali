.class public Lorg/apache/poi/hpsf/CustomProperties;
.super Ljava/util/HashMap;
.source "CustomProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/hpsf/CustomProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private dictionaryIDToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryNameToID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isPure:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryIDToName:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    return-void
.end method

.method private put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;
    .locals 8
    .param p1, "customProperty"    # Lorg/apache/poi/hpsf/CustomProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 135
    .local v1, "oldId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/poi/hpsf/CustomProperty;->setID(J)V

    goto :goto_1

    .line 139
    :cond_0
    const-wide/16 v2, 0x1

    .line 140
    .local v2, "max":J
    iget-object v4, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryIDToName:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 143
    .local v5, "id":J
    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    .line 144
    move-wide v2, v5

    .line 145
    .end local v5    # "id":J
    :cond_1
    goto :goto_0

    .line 146
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_2
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lorg/apache/poi/hpsf/CustomProperty;->setID(J)V

    .line 148
    .end local v2    # "max":J
    :goto_1
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 353
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 354
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 356
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 359
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 366
    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz v0, :cond_0

    .line 367
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 369
    :cond_0
    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    .line 370
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 371
    const/4 v2, 0x1

    return v2

    .line 373
    .end local v1    # "cp":Lorg/apache/poi/hpsf/CustomProperty;
    :cond_1
    goto :goto_0

    .line 375
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 271
    .local v0, "id":Ljava/lang/Long;
    invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    .line 272
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getCodepage()I
    .locals 8

    .line 387
    const/4 v0, -0x1

    .line 388
    .local v0, "codepage":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperties;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/CustomProperty;>;"
    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/CustomProperty;

    .line 391
    .local v2, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 392
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/CustomProperty;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 393
    .end local v2    # "cp":Lorg/apache/poi/hpsf/CustomProperty;
    :cond_0
    goto :goto_0

    .line 394
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/CustomProperty;>;"
    :cond_1
    return v0
.end method

.method getDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryIDToName:Ljava/util/Map;

    return-object v0
.end method

.method public idSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isPure()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public nameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 252
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 253
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 254
    const-wide/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 255
    invoke-virtual {v0, p2}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 256
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 257
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-direct {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .line 216
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 217
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 218
    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 219
    invoke-virtual {v0, p2}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 220
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 221
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-direct {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 234
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 235
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 236
    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 237
    invoke-virtual {v0, p2}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 238
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 239
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-direct {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Long;

    .line 198
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 199
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 200
    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 201
    invoke-virtual {v0, p2}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 202
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 203
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-direct {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 180
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 181
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 182
    const-wide/16 v1, 0x1f

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 183
    invoke-virtual {v0, p2}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 184
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 185
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-direct {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .line 287
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 288
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 289
    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 290
    invoke-virtual {v0, p2}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 291
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {v1, v0, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 292
    .local v1, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-direct {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cp"    # Lorg/apache/poi/hpsf/CustomProperty;

    .line 86
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 99
    .local v0, "idKey":Ljava/lang/Long;
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 100
    .local v1, "oldID":Ljava/lang/Long;
    iget-object v2, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryIDToName:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryIDToName:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-super {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/CustomProperty;

    .line 106
    .local v2, "oldCp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v2

    .line 93
    .end local v0    # "idKey":Ljava/lang/Long;
    .end local v1    # "oldID":Ljava/lang/Long;
    .end local v2    # "oldCp":Lorg/apache/poi/hpsf/CustomProperty;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter \"name\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") and custom property\'s name ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") do not match."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 163
    .local v0, "id":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 165
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryIDToName:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionaryNameToID:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-super {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setCodepage(I)V
    .locals 3
    .param p1, "codepage"    # I

    .line 328
    new-instance v0, Lorg/apache/poi/hpsf/MutableProperty;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableProperty;-><init>()V

    .line 329
    .local v0, "p":Lorg/apache/poi/hpsf/MutableProperty;
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setID(J)V

    .line 330
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableProperty;->setType(J)V

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/MutableProperty;->setValue(Ljava/lang/Object;)V

    .line 332
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;)V

    invoke-direct {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method public setPure(Z)V
    .locals 0
    .param p1, "isPure"    # Z

    .line 419
    iput-boolean p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    .line 420
    return-void
.end method
