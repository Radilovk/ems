.class public final Lorg/apache/poi/ddf/EscherPropertyFactory;
.super Ljava/lang/Object;
.source "EscherPropertyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProperties([BIS)Ljava/util/List;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "numProperties"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIS)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherProperty;>;"
    move v1, p2

    .line 45
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, p3, :cond_7

    .line 48
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    .line 49
    .local v4, "propId":S
    add-int/lit8 v5, v1, 0x2

    invoke-static {p1, v5}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    .line 50
    .local v5, "propData":I
    and-int/lit16 v6, v4, 0x3fff

    int-to-short v6, v6

    .line 51
    .local v6, "propNumber":S
    and-int/lit16 v7, v4, -0x8000

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 52
    .local v7, "isComplex":Z
    :goto_1
    and-int/lit16 v9, v4, 0x4000

    if-eqz v9, :cond_1

    const/4 v3, 0x1

    .line 54
    .local v3, "isBlipId":Z
    :cond_1
    invoke-static {v6}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyType(S)B

    move-result v9

    .line 55
    .local v9, "propertyType":B
    if-ne v9, v8, :cond_2

    .line 56
    new-instance v8, Lorg/apache/poi/ddf/EscherBoolProperty;

    invoke-direct {v8, v4, v5}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 57
    :cond_2
    const/4 v8, 0x2

    if-ne v9, v8, :cond_3

    .line 58
    new-instance v8, Lorg/apache/poi/ddf/EscherRGBProperty;

    invoke-direct {v8, v4, v5}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :cond_3
    const/4 v8, 0x3

    if-ne v9, v8, :cond_4

    .line 60
    new-instance v8, Lorg/apache/poi/ddf/EscherShapePathProperty;

    invoke-direct {v8, v4, v5}, Lorg/apache/poi/ddf/EscherShapePathProperty;-><init>(SI)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 63
    :cond_4
    if-nez v7, :cond_5

    .line 64
    new-instance v8, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-direct {v8, v4, v5}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    :cond_5
    const/4 v8, 0x5

    if-ne v9, v8, :cond_6

    .line 68
    new-instance v8, Lorg/apache/poi/ddf/EscherArrayProperty;

    new-array v10, v5, [B

    invoke-direct {v8, v4, v10}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(S[B)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    :cond_6
    new-instance v8, Lorg/apache/poi/ddf/EscherComplexProperty;

    new-array v10, v5, [B

    invoke-direct {v8, v4, v10}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(S[B)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_2
    nop

    .end local v3    # "isBlipId":Z
    .end local v4    # "propId":S
    .end local v5    # "propData":I
    .end local v6    # "propNumber":S
    .end local v7    # "isComplex":Z
    .end local v9    # "propertyType":B
    add-int/lit8 v1, v1, 0x6

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ddf/EscherProperty;

    .line 80
    .local v4, "p":Lorg/apache/poi/ddf/EscherProperty;
    instance-of v5, v4, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-eqz v5, :cond_9

    .line 81
    instance-of v5, v4, Lorg/apache/poi/ddf/EscherArrayProperty;

    if-eqz v5, :cond_8

    .line 82
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-virtual {v5, p1, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->setArrayData([BI)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_4

    .line 84
    :cond_8
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ddf/EscherComplexProperty;

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v5

    .line 85
    .local v5, "complexData":[B
    array-length v6, v5

    invoke-static {p1, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    array-length v6, v5

    add-int/2addr v1, v6

    .line 89
    .end local v4    # "p":Lorg/apache/poi/ddf/EscherProperty;
    .end local v5    # "complexData":[B
    :cond_9
    :goto_4
    goto :goto_3

    .line 90
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :cond_a
    return-object v0
.end method
