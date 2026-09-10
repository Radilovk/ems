.class public Lorg/apache/poi/ddf/DefaultEscherRecordFactory;
.super Ljava/lang/Object;
.source "DefaultEscherRecordFactory.java"

# interfaces
.implements Lorg/apache/poi/ddf/EscherRecordFactory;


# static fields
.field private static escherRecordClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static recordsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/apache/poi/ddf/EscherBSERecord;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/apache/poi/ddf/EscherOptRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/apache/poi/ddf/EscherTertiaryOptRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/apache/poi/ddf/EscherDgRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lorg/apache/poi/ddf/EscherSpgrRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/apache/poi/ddf/EscherSpRecord;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/apache/poi/ddf/EscherClientDataRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lorg/apache/poi/ddf/EscherDggRecord;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lorg/apache/poi/ddf/EscherTextboxRecord;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->escherRecordClasses:[Ljava/lang/Class;

    .line 42
    sget-object v0, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->escherRecordClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->recordsToMap([Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->recordsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static isContainer(SS)Z
    .locals 4
    .param p0, "options"    # S
    .param p1, "recordId"    # S

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    const/16 v2, -0x1000

    if-lt p1, v2, :cond_1

    const/16 v2, -0xffb

    if-gt p1, v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const/16 v2, -0xff3

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static recordsToMap([Ljava/lang/Class;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "recClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;>;"
    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Class;

    .line 124
    .local v0, "EMPTY_CLASS_ARRAY":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_0

    .line 126
    aget-object v4, p0, v3

    .line 129
    .local v4, "recCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/ddf/EscherRecord;>;"
    :try_start_0
    const-string v7, "RECORD_ID"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .line 139
    .local v6, "sid":S
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 143
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;"
    .end local v6    # "sid":S
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 132
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 134
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 140
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v6    # "sid":S
    :catch_3
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 145
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "recCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/ddf/EscherRecord;>;"
    .end local v6    # "sid":S
    :cond_0
    return-object v5
.end method


# virtual methods
.method public createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 60
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    .line 61
    .local v2, "options":S
    add-int/lit8 v6, p2, 0x2

    invoke-static {p1, v6}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v5

    .line 68
    .local v5, "recordId":S
    invoke-static {v2, v5}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->isContainer(SS)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    new-instance v3, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 70
    .local v3, "r":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 71
    invoke-virtual {v3, v2}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 109
    .end local v3    # "r":Lorg/apache/poi/ddf/EscherContainerRecord;
    :goto_0
    return-object v3

    .line 75
    :cond_0
    const/16 v6, -0xfe8

    if-lt v5, v6, :cond_5

    const/16 v6, -0xee9

    if-gt v5, v6, :cond_5

    .line 78
    const/16 v6, -0xfe1

    if-eq v5, v6, :cond_1

    const/16 v6, -0xfe3

    if-eq v5, v6, :cond_1

    const/16 v6, -0xfe2

    if-ne v5, v6, :cond_2

    .line 82
    :cond_1
    new-instance v3, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

    .line 92
    .local v3, "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    :goto_1
    invoke-virtual {v3, v5}, Lorg/apache/poi/ddf/EscherBlipRecord;->setRecordId(S)V

    .line 93
    invoke-virtual {v3, v2}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    goto :goto_0

    .line 84
    .end local v3    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    :cond_2
    const/16 v6, -0xfe6

    if-eq v5, v6, :cond_3

    const/16 v6, -0xfe5

    if-eq v5, v6, :cond_3

    const/16 v6, -0xfe4

    if-ne v5, v6, :cond_4

    .line 88
    :cond_3
    new-instance v3, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>()V

    .restart local v3    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    goto :goto_1

    .line 90
    .end local v3    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    :cond_4
    new-instance v3, Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    .restart local v3    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    goto :goto_1

    .line 97
    .end local v3    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    :cond_5
    sget-object v6, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->recordsMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 98
    .local v4, "recordConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;"
    const/4 v1, 0x0

    .line 99
    .local v1, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    if-nez v4, :cond_6

    .line 100
    new-instance v3, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>()V

    goto :goto_0

    .line 103
    :cond_6
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .restart local v1    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v1, v5}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    .line 108
    invoke-virtual {v1, v2}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    move-object v3, v1

    .line 109
    goto :goto_0

    .line 104
    .end local v1    # "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {v3}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>()V

    goto :goto_0
.end method
