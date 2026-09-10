.class public final Lorg/apache/poi/ddf/EscherPropertyFactory;
.super Ljava/lang/Object;
.source "EscherPropertyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProperties([BIS)Ljava/util/List;
    .locals 15
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "numProperties"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIS)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherProperty;>;"
    move/from16 v7, p2

    .line 45
    .local v7, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v2, v0, :cond_7

    .line 48
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v9

    .line 49
    .local v9, "propId":S
    add-int/lit8 v13, v7, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v8

    .line 50
    .local v8, "propData":I
    and-int/lit16 v13, v9, 0x3fff

    int-to-short v10, v13

    .line 51
    .local v10, "propNumber":S
    and-int/lit16 v13, v9, -0x8000

    if-eqz v13, :cond_0

    const/4 v4, 0x1

    .line 52
    .local v4, "isComplex":Z
    :goto_1
    and-int/lit16 v13, v9, 0x4000

    if-eqz v13, :cond_1

    const/4 v3, 0x1

    .line 54
    .local v3, "isBlipId":Z
    :goto_2
    invoke-static {v10}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyType(S)B

    move-result v11

    .line 55
    .local v11, "propertyType":B
    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    .line 56
    new-instance v13, Lorg/apache/poi/ddf/EscherBoolProperty;

    invoke-direct {v13, v9, v8}, Lorg/apache/poi/ddf/EscherBoolProperty;-><init>(SI)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_3
    add-int/lit8 v7, v7, 0x6

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "isBlipId":Z
    .end local v4    # "isComplex":Z
    .end local v11    # "propertyType":B
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 52
    .restart local v4    # "isComplex":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 57
    .restart local v3    # "isBlipId":Z
    .restart local v11    # "propertyType":B
    :cond_2
    const/4 v13, 0x2

    if-ne v11, v13, :cond_3

    .line 58
    new-instance v13, Lorg/apache/poi/ddf/EscherRGBProperty;

    invoke-direct {v13, v9, v8}, Lorg/apache/poi/ddf/EscherRGBProperty;-><init>(SI)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 59
    :cond_3
    const/4 v13, 0x3

    if-ne v11, v13, :cond_4

    .line 60
    new-instance v13, Lorg/apache/poi/ddf/EscherShapePathProperty;

    invoke-direct {v13, v9, v8}, Lorg/apache/poi/ddf/EscherShapePathProperty;-><init>(SI)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 63
    :cond_4
    if-nez v4, :cond_5

    .line 64
    new-instance v13, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-direct {v13, v9, v8}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 67
    :cond_5
    const/4 v13, 0x5

    if-ne v11, v13, :cond_6

    .line 68
    new-instance v13, Lorg/apache/poi/ddf/EscherArrayProperty;

    new-array v14, v8, [B

    invoke-direct {v13, v9, v14}, Lorg/apache/poi/ddf/EscherArrayProperty;-><init>(S[B)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 70
    :cond_6
    new-instance v13, Lorg/apache/poi/ddf/EscherComplexProperty;

    new-array v14, v8, [B

    invoke-direct {v13, v9, v14}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(S[B)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 78
    .end local v3    # "isBlipId":Z
    .end local v4    # "isComplex":Z
    .end local v8    # "propData":I
    .end local v9    # "propId":S
    .end local v10    # "propNumber":S
    .end local v11    # "propertyType":B
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/ddf/EscherProperty;>;"
    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 79
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/ddf/EscherProperty;

    .line 80
    .local v6, "p":Lorg/apache/poi/ddf/EscherProperty;
    instance-of v13, v6, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-eqz v13, :cond_8

    .line 81
    instance-of v13, v6, Lorg/apache/poi/ddf/EscherArrayProperty;

    if-eqz v13, :cond_9

    .line 82
    check-cast v6, Lorg/apache/poi/ddf/EscherArrayProperty;

    .end local v6    # "p":Lorg/apache/poi/ddf/EscherProperty;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lorg/apache/poi/ddf/EscherArrayProperty;->setArrayData([BI)I

    move-result v13

    add-int/2addr v7, v13

    goto :goto_4

    .line 84
    .restart local v6    # "p":Lorg/apache/poi/ddf/EscherProperty;
    :cond_9
    check-cast v6, Lorg/apache/poi/ddf/EscherComplexProperty;

    .end local v6    # "p":Lorg/apache/poi/ddf/EscherProperty;
    invoke-virtual {v6}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object v1

    .line 85
    .local v1, "complexData":[B
    const/4 v13, 0x0

    array-length v14, v1

    move-object/from16 v0, p1

    invoke-static {v0, v7, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    array-length v13, v1

    add-int/2addr v7, v13

    goto :goto_4

    .line 90
    .end local v1    # "complexData":[B
    :cond_a
    return-object v12
.end method
