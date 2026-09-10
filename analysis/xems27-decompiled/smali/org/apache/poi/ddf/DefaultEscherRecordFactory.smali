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
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static recordsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

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
    invoke-static {v0}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->recordsToMap([Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->recordsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static isContainer(SS)Z
    .locals 4
    .param p0, "options"    # S
    .param p1, "recordId"    # S

    .line 149
    const/4 v0, 0x1

    const/16 v1, -0x1000

    if-lt p1, v1, :cond_0

    const/16 v1, -0xffb

    if-gt p1, v1, :cond_0

    .line 151
    return v0

    .line 153
    :cond_0
    const/16 v1, -0xff3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 154
    return v2

    .line 156
    :cond_1
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static recordsToMap([Ljava/lang/Class;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;>;"
        }
    .end annotation

    .line 121
    .local p0, "recClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Short;Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 124
    .local v2, "EMPTY_CLASS_ARRAY":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_0

    .line 126
    aget-object v6, p0, v3

    .line 129
    .local v6, "recCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/ddf/EscherRecord;>;"
    :try_start_0
    const-string v7, "RECORD_ID"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .local v1, "sid":S
    nop

    .line 139
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;"
    nop

    .line 143
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v1    # "sid":S
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;"
    .end local v6    # "recCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/ddf/EscherRecord;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .restart local v1    # "sid":S
    .restart local v6    # "recCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/ddf/EscherRecord;>;"
    :catch_0
    move-exception v4

    .line 141
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    .restart local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;"
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 134
    .end local v1    # "sid":S
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;"
    :catch_1
    move-exception v4

    .line 135
    .restart local v1    # "sid":S
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 132
    .end local v1    # "sid":S
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v4

    .line 133
    .restart local v1    # "sid":S
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 130
    .end local v1    # "sid":S
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 131
    .restart local v1    # "sid":S
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 145
    .end local v1    # "sid":S
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "recCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/ddf/EscherRecord;>;"
    :cond_0
    return-object v0
.end method


# virtual methods
.method public createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 60
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    .line 61
    .local v0, "options":S
    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    .line 68
    .local v1, "recordId":S
    invoke-static {v0, v1}, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->isContainer(SS)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v2, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    .line 70
    .local v2, "r":Lorg/apache/poi/ddf/EscherContainerRecord;
    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherContainerRecord;->setRecordId(S)V

    .line 71
    invoke-virtual {v2, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->setOptions(S)V

    .line 72
    return-object v2

    .line 75
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherContainerRecord;
    :cond_0
    const/16 v2, -0xfe8

    if-lt v1, v2, :cond_5

    const/16 v2, -0xee9

    if-gt v1, v2, :cond_5

    .line 78
    const/16 v2, -0xfe1

    if-eq v1, v2, :cond_4

    const/16 v2, -0xfe3

    if-eq v1, v2, :cond_4

    const/16 v2, -0xfe2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    const/16 v2, -0xfe6

    if-eq v1, v2, :cond_3

    const/16 v2, -0xfe5

    if-eq v1, v2, :cond_3

    const/16 v2, -0xfe4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    new-instance v2, Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    .local v2, "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    goto :goto_2

    .line 88
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    :cond_3
    :goto_0
    new-instance v2, Lorg/apache/poi/ddf/EscherMetafileBlip;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherMetafileBlip;-><init>()V

    .restart local v2    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    goto :goto_2

    .line 82
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    :cond_4
    :goto_1
    new-instance v2, Lorg/apache/poi/ddf/EscherBitmapBlip;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherBitmapBlip;-><init>()V

    .line 92
    .restart local v2    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    :goto_2
    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setRecordId(S)V

    .line 93
    invoke-virtual {v2, v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->setOptions(S)V

    .line 94
    return-object v2

    .line 97
    .end local v2    # "r":Lorg/apache/poi/ddf/EscherBlipRecord;
    :cond_5
    sget-object v2, Lorg/apache/poi/ddf/DefaultEscherRecordFactory;->recordsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 98
    .local v2, "recordConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/poi/ddf/EscherRecord;>;"
    const/4 v3, 0x0

    .line 99
    .local v3, "escherRecord":Lorg/apache/poi/ddf/EscherRecord;
    if-nez v2, :cond_6

    .line 100
    new-instance v4, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {v4}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>()V

    return-object v4

    .line 103
    :cond_6
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 106
    nop

    .line 107
    invoke-virtual {v3, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    .line 108
    invoke-virtual {v3, v0}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    .line 109
    return-object v3

    .line 104
    :catch_0
    move-exception v4

    .line 105
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {v5}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>()V

    return-object v5
.end method
