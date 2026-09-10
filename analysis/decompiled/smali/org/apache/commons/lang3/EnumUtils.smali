.class public Lorg/apache/commons/lang3/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# static fields
.field private static final CANNOT_STORE_S_S_VALUES_IN_S_BITS:Ljava/lang/String; = "Cannot store %s %s values in %s bits"

.field private static final ENUM_CLASS_MUST_BE_DEFINED:Ljava/lang/String; = "EnumClass must be defined."

.field private static final NULL_ELEMENTS_NOT_PERMITTED:Ljava/lang/String; = "null elements not permitted"

.field private static final S_DOES_NOT_SEEM_TO_BE_AN_ENUM_TYPE:Ljava/lang/String; = "%s does not seem to be an Enum type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private static asEnum(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v3, 0x0

    .line 341
    const-string v0, "EnumClass must be defined."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const-string v1, "%s does not seem to be an Enum type"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 343
    return-object p0
.end method

.method private static checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/16 v7, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 324
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 325
    .local v0, "constants":[Ljava/lang/Enum;, "[TE;"
    array-length v1, v0

    if-gt v1, v7, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Cannot store %s %s values in %s bits"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v6, v0

    .line 326
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 325
    invoke-static {v1, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 328
    return-object p0

    :cond_0
    move v1, v3

    .line 325
    goto :goto_0
.end method

.method public static generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)J"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    const/4 v4, 0x0

    .line 175
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    .line 176
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-wide/16 v2, 0x0

    .line 178
    .local v2, "total":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 179
    .local v0, "constant":Ljava/lang/Enum;, "TE;"
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    const-string v6, "null elements not permitted"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const-wide/16 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    shl-long/2addr v6, v1

    or-long/2addr v2, v6

    .line 181
    goto :goto_0

    :cond_0
    move v1, v4

    .line 179
    goto :goto_1

    .line 182
    .end local v0    # "constant":Ljava/lang/Enum;, "TE;"
    :cond_1
    return-wide v2
.end method

.method public static varargs generateBitVector(Ljava/lang/Class;[Ljava/lang/Enum;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)J"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 236
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 237
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static generateBitVectors(Ljava/lang/Class;Ljava/lang/Iterable;)[J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)[J"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    const/4 v5, 0x0

    .line 202
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 203
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 205
    .local v0, "condensed":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 206
    .local v1, "constant":Ljava/lang/Enum;, "TE;"
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :goto_1
    const-string v7, "null elements not permitted"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v4, v5

    .line 206
    goto :goto_1

    .line 209
    .end local v1    # "constant":Ljava/lang/Enum;, "TE;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Enum;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x40

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [J

    .line 210
    .local v2, "result":[J
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 211
    .local v3, "value":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    div-int/lit8 v5, v5, 0x40

    aget-wide v6, v2, v5

    const-wide/16 v8, 0x1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    rem-int/lit8 v10, v10, 0x40

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    aput-wide v6, v2, v5

    goto :goto_2

    .line 213
    .end local v3    # "value":Ljava/lang/Enum;, "TE;"
    :cond_2
    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 214
    return-object v2
.end method

.method public static varargs generateBitVectors(Ljava/lang/Class;[Ljava/lang/Enum;)[J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)[J"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 258
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 259
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 260
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 261
    .local v0, "condensed":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x40

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [J

    .line 263
    .local v1, "result":[J
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 264
    .local v2, "value":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    aget-wide v6, v1, v4

    const-wide/16 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    rem-int/lit8 v5, v5, 0x40

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    aput-wide v6, v1, v4

    goto :goto_0

    .line 266
    .end local v2    # "value":Ljava/lang/Enum;, "TE;"
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 267
    return-object v1
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-object v1

    .line 126
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 6
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v2, 0x0

    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 153
    :cond_1
    :goto_0
    return-object v0

    .line 148
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 149
    .local v0, "each":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "each":Ljava/lang/Enum;, "TE;"
    :cond_3
    move-object v0, v2

    .line 153
    goto :goto_0
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TE;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 60
    .local v0, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/Enum;, "TE;"
    :cond_0
    return-object v1
.end method

.method public static isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/EnumUtils;->getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static processBitVector(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 285
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;
    .locals 12
    .param p1, "values"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 303
    .local v3, "results":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-static {v4}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v2

    .line 304
    .local v2, "lvalues":[J
    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 305
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Enum;

    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v4, v5

    .line 306
    .local v1, "constant":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    div-int/lit8 v0, v7, 0x40

    .line 307
    .local v0, "block":I
    array-length v7, v2

    if-ge v0, v7, :cond_0

    aget-wide v8, v2, v0

    const-wide/16 v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    rem-int/lit8 v7, v7, 0x40

    shl-long/2addr v10, v7

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 308
    invoke-virtual {v3, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "block":I
    .end local v1    # "constant":Ljava/lang/Enum;, "TE;"
    :cond_1
    return-object v3
.end method
