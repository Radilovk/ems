.class Lcn/icomon/icbleprotocol/ICJNI;
.super Ljava/lang/Object;
.source "ICJNI.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeysFromMap(Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 22
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v0
.end method

.method public static getObjectType(Ljava/lang/Object;)I
    .registers 2

    .line 42
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 47
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 51
    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 p0, 0x3

    return p0

    .line 55
    :cond_12
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_18

    const/4 p0, 0x4

    return p0

    .line 59
    :cond_18
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1e

    const/4 p0, 0x5

    return p0

    .line 63
    :cond_1e
    instance-of v0, p0, [B

    if-eqz v0, :cond_24

    const/4 p0, 0x6

    return p0

    .line 65
    :cond_24
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2a

    const/4 p0, 0x7

    return p0

    .line 67
    :cond_2a
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_31

    const/16 p0, 0x8

    return p0

    .line 69
    :cond_31
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_38

    const/16 p0, 0x9

    return p0

    .line 71
    :cond_38
    instance-of p0, p0, Ljava/lang/Short;

    if-eqz p0, :cond_3f

    const/16 p0, 0xa

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method
