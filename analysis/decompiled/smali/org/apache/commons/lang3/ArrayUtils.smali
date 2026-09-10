.class public Lorg/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 55
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 59
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 63
    new-array v0, v1, [J

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 67
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 71
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 75
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 79
    new-array v0, v1, [S

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 83
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 87
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 91
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 95
    new-array v0, v1, [D

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 99
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 103
    new-array v0, v1, [F

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 107
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 111
    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 115
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 119
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 123
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p3, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 5942
    if-nez p0, :cond_1

    .line 5943
    if-eqz p1, :cond_0

    .line 5944
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Length: 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5946
    :cond_0
    const/4 v3, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 5947
    .local v0, "joinedArray":Ljava/lang/Object;
    invoke-static {v0, v4, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5960
    .end local v0    # "joinedArray":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 5950
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 5951
    .local v1, "length":I
    if-gt p1, v1, :cond_2

    if-gez p1, :cond_3

    .line 5952
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5954
    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 5955
    .local v2, "result":Ljava/lang/Object;
    invoke-static {p0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5956
    invoke-static {v2, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5957
    if-ge p1, v1, :cond_4

    .line 5958
    add-int/lit8 v3, p1, 0x1

    sub-int v4, v1, p1

    invoke-static {p0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v0, v2

    .line 5960
    goto :goto_0
.end method

.method public static add([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    .line 5417
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 5418
    .local v0, "newArray":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 5419
    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "element"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5752
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    .line 5444
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    move-object v0, v1

    check-cast v0, [C

    .line 5445
    .local v0, "newArray":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 5446
    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "index"    # I
    .param p2, "element"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5717
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    .line 5471
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    move-object v0, v1

    check-cast v0, [D

    .line 5472
    .local v0, "newArray":[D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 5473
    return-object v0
.end method

.method public static add([DID)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "index"    # I
    .param p2, "element"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5927
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    .line 5498
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    move-object v0, v1

    check-cast v0, [F

    .line 5499
    .local v0, "newArray":[F
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 5500
    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "element"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5892
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    .line 5525
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 5526
    .local v0, "newArray":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 5527
    return-object v0
.end method

.method public static add([III)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "index"    # I
    .param p2, "element"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5822
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "index"    # I
    .param p2, "element"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5857
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    .line 5552
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    move-object v0, v1

    check-cast v0, [J

    .line 5553
    .local v0, "newArray":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 5554
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5637
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 5638
    .local v0, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 5639
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 5646
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5647
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    return-object v1

    .line 5640
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    if-eqz p2, :cond_1

    .line 5641
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 5643
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array and element cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 5354
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 5355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 5363
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 5364
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v0, v2

    .line 5365
    return-object v0

    .line 5356
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz p1, :cond_1

    .line 5357
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 5359
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Arguments cannot both be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add([SIS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "index"    # I
    .param p2, "element"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5787
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    .line 5579
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    move-object v0, v1

    check-cast v0, [S

    .line 5580
    .local v0, "newArray":[S
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 5581
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "index"    # I
    .param p2, "element"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5681
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    .line 5390
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    move-object v0, v1

    check-cast v0, [Z

    .line 5391
    .local v0, "newArray":[Z
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 5392
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 5167
    if-nez p0, :cond_0

    .line 5168
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 5175
    :goto_0
    return-object v0

    .line 5169
    :cond_0
    if-nez p1, :cond_1

    .line 5170
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 5172
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 5173
    .local v0, "joinedArray":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5174
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([C[C)[C
    .locals 4
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    const/4 v3, 0x0

    .line 5138
    if-nez p0, :cond_0

    .line 5139
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 5146
    :goto_0
    return-object v0

    .line 5140
    :cond_0
    if-nez p1, :cond_1

    .line 5141
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    .line 5143
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 5144
    .local v0, "joinedArray":[C
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5145
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([D[D)[D
    .locals 4
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    const/4 v3, 0x0

    .line 5312
    if-nez p0, :cond_0

    .line 5313
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 5320
    :goto_0
    return-object v0

    .line 5314
    :cond_0
    if-nez p1, :cond_1

    .line 5315
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    .line 5317
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .line 5318
    .local v0, "joinedArray":[D
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5319
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([F[F)[F
    .locals 4
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    const/4 v3, 0x0

    .line 5283
    if-nez p0, :cond_0

    .line 5284
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 5291
    :goto_0
    return-object v0

    .line 5285
    :cond_0
    if-nez p1, :cond_1

    .line 5286
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    .line 5288
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [F

    .line 5289
    .local v0, "joinedArray":[F
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5290
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([I[I)[I
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    const/4 v3, 0x0

    .line 5225
    if-nez p0, :cond_0

    .line 5226
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 5233
    :goto_0
    return-object v0

    .line 5227
    :cond_0
    if-nez p1, :cond_1

    .line 5228
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 5230
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 5231
    .local v0, "joinedArray":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5232
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([J[J)[J
    .locals 4
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    const/4 v3, 0x0

    .line 5254
    if-nez p0, :cond_0

    .line 5255
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 5262
    :goto_0
    return-object v0

    .line 5256
    :cond_0
    if-nez p1, :cond_1

    .line 5257
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    .line 5259
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [J

    .line 5260
    .local v0, "joinedArray":[J
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5261
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array1":[Ljava/lang/Object;, "[TT;"
    .local p1, "array2":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    .line 5063
    if-nez p0, :cond_0

    .line 5064
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 5088
    :goto_0
    return-object v1

    .line 5065
    :cond_0
    if-nez p1, :cond_1

    .line 5066
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 5068
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 5070
    .local v2, "type1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, [Ljava/lang/Object;

    .line 5071
    .local v1, "joinedArray":[Ljava/lang/Object;, "[TT;"
    array-length v4, p0

    invoke-static {p0, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5073
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p0

    array-length v6, p1

    invoke-static {p1, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5074
    :catch_0
    move-exception v0

    .line 5081
    .local v0, "ase":Ljava/lang/ArrayStoreException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 5082
    .local v3, "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5083
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5084
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 5086
    :cond_2
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .locals 4
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    const/4 v3, 0x0

    .line 5196
    if-nez p0, :cond_0

    .line 5197
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 5204
    :goto_0
    return-object v0

    .line 5198
    :cond_0
    if-nez p1, :cond_1

    .line 5199
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    .line 5201
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [S

    .line 5202
    .local v0, "joinedArray":[S
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5203
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 4
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 5109
    if-nez p0, :cond_0

    .line 5110
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 5117
    :goto_0
    return-object v0

    .line 5111
    :cond_0
    if-nez p1, :cond_1

    .line 5112
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    .line 5114
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [Z

    .line 5115
    .local v0, "joinedArray":[Z
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5116
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 405
    if-nez p0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 389
    if-nez p0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static clone([D)[D
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 421
    if-nez p0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static clone([F)[F
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 437
    if-nez p0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 440
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 357
    if-nez p0, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 341
    if-nez p0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static clone([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 453
    if-nez p0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static contains([BB)Z
    .locals 2
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 3822
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 2
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 3719
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 3
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 4029
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    const/4 v3, 0x0

    .line 4046
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .locals 2
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 4149
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 3508
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 3
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 3405
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 3302
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 3611
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 4254
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "newArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 5594
    if-eqz p0, :cond_0

    .line 5595
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 5596
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 5597
    .local v1, "newArray":Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5600
    .end local v0    # "arrayLength":I
    .end local v1    # "newArray":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 1384
    if-nez p0, :cond_0

    .line 1385
    const/4 v0, 0x0

    .line 1387
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 192
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 3735
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3753
    if-nez p0, :cond_1

    move v0, v1

    .line 3764
    :cond_0
    :goto_0
    return v0

    .line 3756
    :cond_1
    if-gez p2, :cond_2

    .line 3757
    const/4 p2, 0x0

    .line 3759
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3760
    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 3759
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3764
    goto :goto_0
.end method

.method public static indexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 3628
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3647
    if-nez p0, :cond_1

    move v0, v1

    .line 3658
    :cond_0
    :goto_0
    return v0

    .line 3650
    :cond_1
    if-gez p2, :cond_2

    .line 3651
    const/4 p2, 0x0

    .line 3653
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3654
    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 3653
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3658
    goto :goto_0
.end method

.method public static indexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 3838
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    .line 3855
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3873
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 3884
    :cond_0
    :goto_0
    return v0

    .line 3876
    :cond_1
    if-gez p3, :cond_2

    .line 3877
    const/4 p3, 0x0

    .line 3879
    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3880
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    .line 3879
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3884
    goto :goto_0
.end method

.method public static indexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .prologue
    const/4 v1, -0x1

    .line 3905
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    .line 3918
    :cond_0
    :goto_0
    return v0

    .line 3908
    :cond_1
    if-gez p3, :cond_2

    .line 3909
    const/4 p3, 0x0

    .line 3911
    :cond_2
    sub-double v4, p1, p4

    .line 3912
    .local v4, "min":D
    add-double v2, p1, p4

    .line 3913
    .local v2, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v6, p0

    if-ge v0, v6, :cond_4

    .line 3914
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_3

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v2

    if-lez v6, :cond_0

    .line 3913
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3918
    goto :goto_0
.end method

.method public static indexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 4062
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 4080
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 4091
    :cond_0
    :goto_0
    return v0

    .line 4083
    :cond_1
    if-gez p2, :cond_2

    .line 4084
    const/4 p2, 0x0

    .line 4086
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 4087
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 4086
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 4091
    goto :goto_0
.end method

.method public static indexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 3421
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3439
    if-nez p0, :cond_1

    move v0, v1

    .line 3450
    :cond_0
    :goto_0
    return v0

    .line 3442
    :cond_1
    if-gez p2, :cond_2

    .line 3443
    const/4 p2, 0x0

    .line 3445
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3446
    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 3445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3450
    goto :goto_0
.end method

.method public static indexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 3318
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3336
    if-nez p0, :cond_1

    move v0, v1

    .line 3347
    :cond_0
    :goto_0
    return v0

    .line 3339
    :cond_1
    if-gez p3, :cond_2

    .line 3340
    const/4 p3, 0x0

    .line 3342
    :cond_2
    move v0, p3

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3343
    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 3342
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3347
    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 3199
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3217
    if-nez p0, :cond_1

    move v0, v1

    .line 3236
    :cond_0
    :goto_0
    return v0

    .line 3220
    :cond_1
    if-gez p2, :cond_2

    .line 3221
    const/4 p2, 0x0

    .line 3223
    :cond_2
    if-nez p1, :cond_3

    .line 3224
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 3225
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 3224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3230
    .end local v0    # "i":I
    :cond_3
    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_4

    .line 3231
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3230
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 3236
    goto :goto_0
.end method

.method public static indexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 3524
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3542
    if-nez p0, :cond_1

    move v0, v1

    .line 3553
    :cond_0
    :goto_0
    return v0

    .line 3545
    :cond_1
    if-gez p2, :cond_2

    .line 3546
    const/4 p2, 0x0

    .line 3548
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3549
    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 3548
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 3553
    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 4165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 4184
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 4195
    :cond_0
    :goto_0
    return v0

    .line 4187
    :cond_1
    if-gez p2, :cond_2

    .line 4188
    const/4 p2, 0x0

    .line 4190
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 4191
    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 4190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 4195
    goto :goto_0
.end method

.method public static varargs insert(I[B[B)[B
    .locals 4
    .param p0, "index"    # I
    .param p1, "array"    # [B
    .param p2, "values"    # [B

    .prologue
    const/4 v3, 0x0

    .line 8122
    if-nez p1, :cond_1

    .line 8123
    const/4 v0, 0x0

    .line 8141
    :cond_0
    :goto_0
    return-object v0

    .line 8125
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 8126
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 8128
    :cond_3
    if-ltz p0, :cond_4

    array-length v1, p1

    if-le p0, v1, :cond_5

    .line 8129
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8132
    :cond_5
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 8134
    .local v0, "result":[B
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8135
    if-lez p0, :cond_6

    .line 8136
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8138
    :cond_6
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 8139
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs insert(I[C[C)[C
    .locals 4
    .param p0, "index"    # I
    .param p1, "array"    # [C
    .param p2, "values"    # [C

    .prologue
    const/4 v3, 0x0

    .line 8164
    if-nez p1, :cond_1

    .line 8165
    const/4 v0, 0x0

    .line 8183
    :cond_0
    :goto_0
    return-object v0

    .line 8167
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 8168
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    .line 8170
    :cond_3
    if-ltz p0, :cond_4

    array-length v1, p1

    if-le p0, v1, :cond_5

    .line 8171
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8174
    :cond_5
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 8176
    .local v0, "result":[C
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8177
    if-lez p0, :cond_6

    .line 8178
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8180
    :cond_6
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 8181
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs insert(I[D[D)[D
    .locals 4
    .param p0, "index"    # I
    .param p1, "array"    # [D
    .param p2, "values"    # [D

    .prologue
    const/4 v3, 0x0

    .line 8206
    if-nez p1, :cond_1

    .line 8207
    const/4 v0, 0x0

    .line 8225
    :cond_0
    :goto_0
    return-object v0

    .line 8209
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 8210
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    .line 8212
    :cond_3
    if-ltz p0, :cond_4

    array-length v1, p1

    if-le p0, v1, :cond_5

    .line 8213
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8216
    :cond_5
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [D

    .line 8218
    .local v0, "result":[D
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8219
    if-lez p0, :cond_6

    .line 8220
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8222
    :cond_6
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 8223
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs insert(I[F[F)[F
    .locals 4
    .param p0, "index"    # I
    .param p1, "array"    # [F
    .param p2, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 8248
    if-nez p1, :cond_1

    .line 8249
    const/4 v0, 0x0

    .line 8267
    :cond_0
    :goto_0
    return-object v0

    .line 8251
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 8252
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    .line 8254
    :cond_3
    if-ltz p0, :cond_4

    array-length v1, p1

    if-le p0, v1, :cond_5

    .line 8255
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8258
    :cond_5
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [F

    .line 8260
    .local v0, "result":[F
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8261
    if-lez p0, :cond_6

    .line 8262
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8264
    :cond_6
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 8265
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs insert(I[I[I)[I
    .locals 4
    .param p0, "index"    # I
    .param p1, "array"    # [I
    .param p2, "values"    # [I

    .prologue
    const/4 v3, 0x0

    .line 8290
    if-nez p1, :cond_1

    .line 8291
    const/4 v0, 0x0

    .line 8309
    :cond_0
    :goto_0
    return-object v0

    .line 8293
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 8294
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 8296
    :cond_3
    if-ltz p0, :cond_4

    array-length v1, p1

    if-le p0, v1, :cond_5

    .line 8297
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8300
    :cond_5
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 8302
    .local v0, "result":[I
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8303
    if-lez p0, :cond_6

    .line 8304
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8306
    :cond_6
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 8307
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs insert(I[J[J)[J
    .locals 4
    .param p0, "index"    # I
    .param p1, "array"    # [J
    .param p2, "values"    # [J

    .prologue
    const/4 v3, 0x0

    .line 8332
    if-nez p1, :cond_1

    .line 8333
    const/4 v0, 0x0

    .line 8351
    :cond_0
    :goto_0
    return-object v0

    .line 8335
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 8336
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    .line 8338
    :cond_3
    if-ltz p0, :cond_4

    array-length v1, p1

    if-le p0, v1, :cond_5

    .line 8339
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8342
    :cond_5
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [J

    .line 8344
    .local v0, "result":[J
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8345
    if-lez p0, :cond_6

    .line 8346
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8348
    :cond_6
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 8349
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs insert(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "values":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 8426
    if-nez p1, :cond_1

    .line 8427
    const/4 v0, 0x0

    .line 8448
    :cond_0
    :goto_0
    return-object v0

    .line 8429
    :cond_1
    if-eqz p2, :cond_2

    array-length v2, p2

    if-nez v2, :cond_3

    .line 8430
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 8432
    :cond_3
    if-ltz p0, :cond_4

    array-length v2, p1

    if-le p0, v2, :cond_5

    .line 8433
    :cond_4
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8436
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 8439
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 8441
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v2, p2

    invoke-static {p2, v4, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8442
    if-lez p0, :cond_6

    .line 8443
    invoke-static {p1, v4, v0, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8445
    :cond_6
    array-length v2, p1

    if-ge p0, v2, :cond_0

    .line 8446
    array-length v2, p2

    add-int/2addr v2, p0

    array-length v3, p1

    sub-int/2addr v3, p0

    invoke-static {p1, p0, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs insert(I[S[S)[S
    .locals 4
    .param p0, "index"    # I
    .param p1, "array"    # [S
    .param p2, "values"    # [S

    .prologue
    const/4 v3, 0x0

    .line 8374
    if-nez p1, :cond_1

    .line 8375
    const/4 v0, 0x0

    .line 8393
    :cond_0
    :goto_0
    return-object v0

    .line 8377
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 8378
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    .line 8380
    :cond_3
    if-ltz p0, :cond_4

    array-length v1, p1

    if-le p0, v1, :cond_5

    .line 8381
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8384
    :cond_5
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [S

    .line 8386
    .local v0, "result":[S
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8387
    if-lez p0, :cond_6

    .line 8388
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8390
    :cond_6
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 8391
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs insert(I[Z[Z)[Z
    .locals 4
    .param p0, "index"    # I
    .param p1, "array"    # [Z
    .param p2, "values"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 8080
    if-nez p1, :cond_1

    .line 8081
    const/4 v0, 0x0

    .line 8099
    :cond_0
    :goto_0
    return-object v0

    .line 8083
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_3

    .line 8084
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    .line 8086
    :cond_3
    if-ltz p0, :cond_4

    array-length v1, p1

    if-le p0, v1, :cond_5

    .line 8087
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8090
    :cond_5
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Z

    .line 8092
    .local v0, "result":[Z
    array-length v1, p2

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8093
    if-lez p0, :cond_6

    .line 8094
    invoke-static {p1, v3, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8096
    :cond_6
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 8097
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static isArrayIndexValid([Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .line 8685
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, p0

    if-gt v1, p1, :cond_1

    .line 8689
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 4901
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 4890
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 4912
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 4923
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 4868
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 4857
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 4846
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 4879
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 4934
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 5002
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 4991
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 5013
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 5024
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 4969
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 4958
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 4947
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 4980
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 5035
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([B[B)Z
    .locals 2
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    .line 1320
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([C[C)Z
    .locals 2
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .prologue
    .line 1307
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([D[D)Z
    .locals 2
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .prologue
    .line 1333
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([F[F)Z
    .locals 2
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    .line 1346
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([I[I)Z
    .locals 2
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    .line 1281
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([J[J)Z
    .locals 2
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .prologue
    .line 1268
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    .line 1255
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([S[S)Z
    .locals 2
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .prologue
    .line 1294
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .prologue
    .line 1359
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .prologue
    .line 1400
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1401
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSorted([B)Z
    .locals 8
    .param p0, "array"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7650
    if-eqz p0, :cond_0

    array-length v6, p0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    :cond_0
    move v4, v5

    .line 7664
    :cond_1
    :goto_0
    return v4

    .line 7654
    :cond_2
    aget-byte v3, p0, v4

    .line 7655
    .local v3, "previous":B
    array-length v2, p0

    .line 7656
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 7657
    aget-byte v0, p0, v1

    .line 7658
    .local v0, "current":B
    invoke-static {v3, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(BB)I

    move-result v6

    if-gtz v6, :cond_1

    .line 7662
    move v3, v0

    .line 7656
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "current":B
    :cond_3
    move v4, v5

    .line 7664
    goto :goto_0
.end method

.method public static isSorted([C)Z
    .locals 8
    .param p0, "array"    # [C

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7675
    if-eqz p0, :cond_0

    array-length v6, p0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    :cond_0
    move v4, v5

    .line 7689
    :cond_1
    :goto_0
    return v4

    .line 7679
    :cond_2
    aget-char v3, p0, v4

    .line 7680
    .local v3, "previous":C
    array-length v2, p0

    .line 7681
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 7682
    aget-char v0, p0, v1

    .line 7683
    .local v0, "current":C
    invoke-static {v3, v0}, Lorg/apache/commons/lang3/CharUtils;->compare(CC)I

    move-result v6

    if-gtz v6, :cond_1

    .line 7687
    move v3, v0

    .line 7681
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "current":C
    :cond_3
    move v4, v5

    .line 7689
    goto :goto_0
.end method

.method public static isSorted([D)Z
    .locals 10
    .param p0, "array"    # [D

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7600
    if-eqz p0, :cond_0

    array-length v8, p0

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    :cond_0
    move v6, v7

    .line 7614
    :cond_1
    :goto_0
    return v6

    .line 7604
    :cond_2
    aget-wide v4, p0, v6

    .line 7605
    .local v4, "previous":D
    array-length v3, p0

    .line 7606
    .local v3, "n":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 7607
    aget-wide v0, p0, v2

    .line 7608
    .local v0, "current":D
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-gtz v8, :cond_1

    .line 7612
    move-wide v4, v0

    .line 7606
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "current":D
    :cond_3
    move v6, v7

    .line 7614
    goto :goto_0
.end method

.method public static isSorted([F)Z
    .locals 8
    .param p0, "array"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7625
    if-eqz p0, :cond_0

    array-length v6, p0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    :cond_0
    move v4, v5

    .line 7639
    :cond_1
    :goto_0
    return v4

    .line 7629
    :cond_2
    aget v3, p0, v4

    .line 7630
    .local v3, "previous":F
    array-length v2, p0

    .line 7631
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 7632
    aget v0, p0, v1

    .line 7633
    .local v0, "current":F
    invoke-static {v3, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-gtz v6, :cond_1

    .line 7637
    move v3, v0

    .line 7631
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "current":F
    :cond_3
    move v4, v5

    .line 7639
    goto :goto_0
.end method

.method public static isSorted([I)Z
    .locals 8
    .param p0, "array"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7525
    if-eqz p0, :cond_0

    array-length v6, p0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    :cond_0
    move v4, v5

    .line 7539
    :cond_1
    :goto_0
    return v4

    .line 7529
    :cond_2
    aget v3, p0, v4

    .line 7530
    .local v3, "previous":I
    array-length v2, p0

    .line 7531
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 7532
    aget v0, p0, v1

    .line 7533
    .local v0, "current":I
    invoke-static {v3, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result v6

    if-gtz v6, :cond_1

    .line 7537
    move v3, v0

    .line 7531
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "current":I
    :cond_3
    move v4, v5

    .line 7539
    goto :goto_0
.end method

.method public static isSorted([J)Z
    .locals 10
    .param p0, "array"    # [J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7550
    if-eqz p0, :cond_0

    array-length v8, p0

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    :cond_0
    move v6, v7

    .line 7564
    :cond_1
    :goto_0
    return v6

    .line 7554
    :cond_2
    aget-wide v4, p0, v6

    .line 7555
    .local v4, "previous":J
    array-length v3, p0

    .line 7556
    .local v3, "n":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 7557
    aget-wide v0, p0, v2

    .line 7558
    .local v0, "current":J
    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(JJ)I

    move-result v8

    if-gtz v8, :cond_1

    .line 7562
    move-wide v4, v0

    .line 7556
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "current":J
    :cond_3
    move v6, v7

    .line 7564
    goto :goto_0
.end method

.method public static isSorted([Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)Z"
        }
    .end annotation

    .prologue
    .line 7477
    .local p0, "array":[Ljava/lang/Comparable;, "[TT;"
    new-instance v0, Lorg/apache/commons/lang3/ArrayUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ArrayUtils$1;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method public static isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7496
    if-nez p1, :cond_0

    .line 7497
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Comparator should not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7500
    :cond_0
    if-eqz p0, :cond_1

    array-length v6, p0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    :cond_1
    move v4, v5

    .line 7514
    :cond_2
    :goto_0
    return v4

    .line 7504
    :cond_3
    aget-object v3, p0, v4

    .line 7505
    .local v3, "previous":Ljava/lang/Object;, "TT;"
    array-length v2, p0

    .line 7506
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 7507
    aget-object v0, p0, v1

    .line 7508
    .local v0, "current":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_2

    .line 7512
    move-object v3, v0

    .line 7506
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "current":Ljava/lang/Object;, "TT;"
    :cond_4
    move v4, v5

    .line 7514
    goto :goto_0
.end method

.method public static isSorted([S)Z
    .locals 8
    .param p0, "array"    # [S

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7575
    if-eqz p0, :cond_0

    array-length v6, p0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    :cond_0
    move v4, v5

    .line 7589
    :cond_1
    :goto_0
    return v4

    .line 7579
    :cond_2
    aget-short v3, p0, v4

    .line 7580
    .local v3, "previous":S
    array-length v2, p0

    .line 7581
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 7582
    aget-short v0, p0, v1

    .line 7583
    .local v0, "current":S
    invoke-static {v3, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result v6

    if-gtz v6, :cond_1

    .line 7587
    move v3, v0

    .line 7581
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "current":S
    :cond_3
    move v4, v5

    .line 7589
    goto :goto_0
.end method

.method public static isSorted([Z)Z
    .locals 8
    .param p0, "array"    # [Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7701
    if-eqz p0, :cond_0

    array-length v6, p0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    :cond_0
    move v4, v5

    .line 7715
    :cond_1
    :goto_0
    return v4

    .line 7705
    :cond_2
    aget-boolean v3, p0, v4

    .line 7706
    .local v3, "previous":Z
    array-length v2, p0

    .line 7707
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 7708
    aget-boolean v0, p0, v1

    .line 7709
    .local v0, "current":Z
    invoke-static {v3, v0}, Lorg/apache/commons/lang3/BooleanUtils;->compare(ZZ)I

    move-result v6

    if-gtz v6, :cond_1

    .line 7713
    move v3, v0

    .line 7707
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "current":Z
    :cond_3
    move v4, v5

    .line 7715
    goto :goto_0
.end method

.method public static lastIndexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .prologue
    .line 3778
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3796
    if-nez p0, :cond_1

    move v0, v1

    .line 3809
    :cond_0
    :goto_0
    return v0

    .line 3799
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 3800
    goto :goto_0

    .line 3801
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 3802
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 3804
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3805
    aget-byte v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 3804
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3809
    goto :goto_0
.end method

.method public static lastIndexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .prologue
    .line 3673
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3692
    if-nez p0, :cond_1

    move v0, v1

    .line 3705
    :cond_0
    :goto_0
    return v0

    .line 3695
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 3696
    goto :goto_0

    .line 3697
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 3698
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 3700
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3701
    aget-char v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 3700
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3705
    goto :goto_0
.end method

.method public static lastIndexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .prologue
    .line 3932
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .prologue
    .line 3949
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3967
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 3980
    :cond_0
    :goto_0
    return v0

    .line 3970
    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    .line 3971
    goto :goto_0

    .line 3972
    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    .line 3973
    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    .line 3975
    :cond_3
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3976
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_0

    .line 3975
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3980
    goto :goto_0
.end method

.method public static lastIndexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .prologue
    const/4 v1, -0x1

    .line 4001
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    .line 4016
    :cond_0
    :goto_0
    return v0

    .line 4004
    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    .line 4005
    goto :goto_0

    .line 4006
    :cond_2
    array-length v6, p0

    if-lt p3, v6, :cond_3

    .line 4007
    array-length v6, p0

    add-int/lit8 p3, v6, -0x1

    .line 4009
    :cond_3
    sub-double v4, p1, p4

    .line 4010
    .local v4, "min":D
    add-double v2, p1, p4

    .line 4011
    .local v2, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 4012
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_4

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v2

    if-lez v6, :cond_0

    .line 4011
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 4016
    goto :goto_0
.end method

.method public static lastIndexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .prologue
    .line 4105
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 4123
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 4136
    :cond_0
    :goto_0
    return v0

    .line 4126
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 4127
    goto :goto_0

    .line 4128
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 4129
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 4131
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 4132
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 4131
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 4136
    goto :goto_0
.end method

.method public static lastIndexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .prologue
    .line 3464
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3482
    if-nez p0, :cond_1

    move v0, v1

    .line 3495
    :cond_0
    :goto_0
    return v0

    .line 3485
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 3486
    goto :goto_0

    .line 3487
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 3488
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 3490
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3491
    aget v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 3490
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3495
    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .prologue
    .line 3361
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3379
    if-nez p0, :cond_1

    move v0, v1

    .line 3392
    :cond_0
    :goto_0
    return v0

    .line 3382
    :cond_1
    if-gez p3, :cond_2

    move v0, v1

    .line 3383
    goto :goto_0

    .line 3384
    :cond_2
    array-length v2, p0

    if-lt p3, v2, :cond_3

    .line 3385
    array-length v2, p0

    add-int/lit8 p3, v2, -0x1

    .line 3387
    :cond_3
    move v0, p3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3388
    aget-wide v2, p0, v0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 3387
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3392
    goto :goto_0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .prologue
    .line 3250
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3268
    if-nez p0, :cond_1

    move v0, v1

    .line 3289
    :cond_0
    :goto_0
    return v0

    .line 3271
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 3272
    goto :goto_0

    .line 3273
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 3274
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 3276
    :cond_3
    if-nez p1, :cond_4

    .line 3277
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 3278
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 3277
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3282
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3283
    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 3284
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3283
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_5
    move v0, v1

    .line 3289
    goto :goto_0
.end method

.method public static lastIndexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .prologue
    .line 3567
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 3585
    if-nez p0, :cond_1

    move v0, v1

    .line 3598
    :cond_0
    :goto_0
    return v0

    .line 3588
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 3589
    goto :goto_0

    .line 3590
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 3591
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 3593
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3594
    aget-short v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 3593
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 3598
    goto :goto_0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .prologue
    .line 4210
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 4228
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 4241
    :cond_0
    :goto_0
    return v0

    .line 4231
    :cond_1
    if-gez p2, :cond_2

    move v0, v1

    .line 4232
    goto :goto_0

    .line 4233
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 4234
    array-length v2, p0

    add-int/lit8 p2, v2, -0x1

    .line 4236
    :cond_3
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 4237
    aget-boolean v2, p0, v0

    if-eq p1, v2, :cond_0

    .line 4236
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 4241
    goto :goto_0
.end method

.method public static nullToEmpty([B)[B
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 640
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 643
    .end local p0    # "array":[B
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 620
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 623
    .end local p0    # "array":[C
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 660
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 663
    .end local p0    # "array":[D
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 680
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 683
    .end local p0    # "array":[F
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 580
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 583
    .end local p0    # "array":[I
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 560
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 563
    .end local p0    # "array":[J
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    .line 860
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 863
    .end local p0    # "array":[Ljava/lang/Boolean;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Byte;

    .prologue
    .line 800
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 803
    .end local p0    # "array":[Ljava/lang/Byte;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Character;

    .prologue
    .line 780
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 783
    .end local p0    # "array":[Ljava/lang/Character;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 523
    .end local p0    # "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Double;

    .prologue
    .line 820
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 823
    .end local p0    # "array":[Ljava/lang/Double;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Float;

    .prologue
    .line 840
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 843
    .end local p0    # "array":[Ljava/lang/Float;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Integer;

    .prologue
    .line 740
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 743
    .end local p0    # "array":[Ljava/lang/Integer;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Long;

    .prologue
    .line 720
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 723
    .end local p0    # "array":[Ljava/lang/Long;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 500
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 503
    .end local p0    # "array":[Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class",
            "<[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    if-nez p1, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    if-nez p0, :cond_1

    .line 480
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 482
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Short;

    .prologue
    .line 760
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 763
    .end local p0    # "array":[Ljava/lang/Short;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 540
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 543
    .end local p0    # "array":[Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 600
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 603
    .end local p0    # "array":[S
    :cond_0
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 700
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 703
    .end local p0    # "array":[Z
    :cond_0
    return-object p0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 6573
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 6574
    .local v0, "length":I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 6575
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6578
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 6579
    .local v1, "result":Ljava/lang/Object;
    invoke-static {p0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6580
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    .line 6581
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6584
    :cond_2
    return-object v1
.end method

.method public static remove([BI)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 6125
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "index"    # I

    .prologue
    .line 6190
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "index"    # I

    .prologue
    .line 6255
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I

    .prologue
    .line 6320
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "index"    # I

    .prologue
    .line 6385
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "index"    # I

    .prologue
    .line 6450
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 5994
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "index"    # I

    .prologue
    .line 6515
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "index"    # I

    .prologue
    .line 6060
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method static removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .locals 9
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "indices"    # Ljava/util/BitSet;

    .prologue
    .line 7439
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v6

    .line 7446
    .local v6, "srcLength":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    .line 7447
    .local v2, "removals":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    sub-int v8, v6, v2

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 7448
    .local v3, "result":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 7449
    .local v5, "srcIndex":I
    const/4 v1, 0x0

    .line 7452
    .local v1, "destIndex":I
    :goto_0
    invoke-virtual {p1, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    .local v4, "set":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 7453
    sub-int v0, v4, v5

    .line 7454
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 7455
    invoke-static {p0, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7456
    add-int/2addr v1, v0

    .line 7458
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v5

    goto :goto_0

    .line 7460
    .end local v0    # "count":I
    :cond_1
    sub-int v0, v6, v5

    .line 7461
    .restart local v0    # "count":I
    if-lez v0, :cond_2

    .line 7462
    invoke-static {p0, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7464
    :cond_2
    return-object v3
.end method

.method static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 13
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "indices"    # [I

    .prologue
    const/4 v12, 0x0

    .line 7385
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v7

    .line 7386
    .local v7, "length":I
    const/4 v3, 0x0

    .line 7387
    .local v3, "diff":I
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 7388
    .local v0, "clonedIndices":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 7391
    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 7392
    array-length v5, v0

    .line 7393
    .local v5, "i":I
    move v8, v7

    .line 7394
    .local v8, "prevIndex":I
    :cond_0
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_3

    .line 7395
    aget v6, v0, v5

    .line 7396
    .local v6, "index":I
    if-ltz v6, :cond_1

    if-lt v6, v7, :cond_2

    .line 7397
    :cond_1
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 7399
    :cond_2
    if-ge v6, v8, :cond_0

    .line 7402
    add-int/lit8 v3, v3, 0x1

    .line 7403
    move v8, v6

    .line 7404
    goto :goto_0

    .line 7408
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v8    # "prevIndex":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    sub-int v11, v7, v3

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    .line 7409
    .local v9, "result":Ljava/lang/Object;
    if-ge v3, v7, :cond_6

    .line 7410
    move v4, v7

    .line 7411
    .local v4, "end":I
    sub-int v2, v7, v3

    .line 7412
    .local v2, "dest":I
    array-length v10, v0

    add-int/lit8 v5, v10, -0x1

    .restart local v5    # "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 7413
    aget v6, v0, v5

    .line 7414
    .restart local v6    # "index":I
    sub-int v10, v4, v6

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 7415
    sub-int v10, v4, v6

    add-int/lit8 v1, v10, -0x1

    .line 7416
    .local v1, "cp":I
    sub-int/2addr v2, v1

    .line 7417
    add-int/lit8 v10, v6, 0x1

    invoke-static {p0, v10, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7420
    .end local v1    # "cp":I
    :cond_4
    move v4, v6

    .line 7412
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 7422
    .end local v6    # "index":I
    :cond_5
    if-lez v4, :cond_6

    .line 7423
    invoke-static {p0, v12, v9, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7426
    .end local v2    # "dest":I
    .end local v4    # "end":I
    .end local v5    # "i":I
    :cond_6
    return-object v9
.end method

.method public static varargs removeAll([B[I)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "indices"    # [I

    .prologue
    .line 6706
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "indices"    # [I

    .prologue
    .line 6970
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "indices"    # [I

    .prologue
    .line 7234
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "indices"    # [I

    .prologue
    .line 7146
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "indices"    # [I

    .prologue
    .line 6882
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "indices"    # [I

    .prologue
    .line 7058
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 1
    .param p1, "indices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .prologue
    .line 6615
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "indices"    # [I

    .prologue
    .line 6794
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "indices"    # [I

    .prologue
    .line 7318
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeAllOccurences([BB)[B
    .locals 6
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    const/4 v5, -0x1

    .line 7798
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v2

    .line 7799
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7800
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v4

    .line 7811
    :goto_0
    return-object v4

    .line 7803
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7804
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7805
    const/4 v0, 0x1

    .line 7807
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 7808
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 7811
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([B[I)[B

    move-result-object v4

    goto :goto_0
.end method

.method public static removeAllOccurences([CC)[C
    .locals 6
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    const/4 v5, -0x1

    .line 7766
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v2

    .line 7767
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7768
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v4

    .line 7779
    :goto_0
    return-object v4

    .line 7771
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7772
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7773
    const/4 v0, 0x1

    .line 7775
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 7776
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 7779
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([C[I)[C

    move-result-object v4

    goto :goto_0
.end method

.method public static removeAllOccurences([DD)[D
    .locals 7
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    const/4 v5, -0x1

    .line 7958
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v2

    .line 7959
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7960
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v4

    .line 7971
    :goto_0
    return-object v4

    .line 7963
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7964
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7965
    const/4 v0, 0x1

    .line 7967
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, p2, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 7968
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 7971
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([D[I)[D

    move-result-object v4

    goto :goto_0
.end method

.method public static removeAllOccurences([FF)[F
    .locals 6
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    const/4 v5, -0x1

    .line 7926
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v2

    .line 7927
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7928
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v4

    .line 7939
    :goto_0
    return-object v4

    .line 7931
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7932
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7933
    const/4 v0, 0x1

    .line 7935
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 7936
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 7939
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([F[I)[F

    move-result-object v4

    goto :goto_0
.end method

.method public static removeAllOccurences([II)[I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    const/4 v5, -0x1

    .line 7862
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v2

    .line 7863
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7864
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v4

    .line 7875
    :goto_0
    return-object v4

    .line 7867
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7868
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7869
    const/4 v0, 0x1

    .line 7871
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 7872
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 7875
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([I[I)[I

    move-result-object v4

    goto :goto_0
.end method

.method public static removeAllOccurences([JJ)[J
    .locals 7
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    const/4 v5, -0x1

    .line 7894
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v2

    .line 7895
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7896
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v4

    .line 7907
    :goto_0
    return-object v4

    .line 7899
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7900
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7901
    const/4 v0, 0x1

    .line 7903
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, p2, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 7904
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 7907
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([J[I)[J

    move-result-object v4

    goto :goto_0
.end method

.method public static removeAllOccurences([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v5, -0x1

    .line 7991
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 7992
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7993
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 8004
    :goto_0
    return-object v4

    .line 7996
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7997
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7998
    const/4 v0, 0x1

    .line 8000
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 8001
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 8004
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public static removeAllOccurences([SS)[S
    .locals 6
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    const/4 v5, -0x1

    .line 7830
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v2

    .line 7831
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7832
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v4

    .line 7843
    :goto_0
    return-object v4

    .line 7835
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7836
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7837
    const/4 v0, 0x1

    .line 7839
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 7840
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 7843
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([S[I)[S

    move-result-object v4

    goto :goto_0
.end method

.method public static removeAllOccurences([ZZ)[Z
    .locals 6
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    const/4 v5, -0x1

    .line 7734
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v2

    .line 7735
    .local v2, "index":I
    if-ne v2, v5, :cond_0

    .line 7736
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v4

    .line 7747
    :goto_0
    return-object v4

    .line 7739
    :cond_0
    array-length v4, p0

    sub-int/2addr v4, v2

    new-array v3, v4, [I

    .line 7740
    .local v3, "indices":[I
    const/4 v4, 0x0

    aput v2, v3, v4

    .line 7741
    const/4 v0, 0x1

    .line 7743
    .local v0, "count":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p0, p1, v4}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 7744
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 7747
    :cond_1
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Z[I)[Z

    move-result-object v4

    goto :goto_0
.end method

.method public static removeElement([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .prologue
    .line 6154
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 6155
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6156
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    .line 6158
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .prologue
    .line 6219
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 6220
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6221
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    .line 6223
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([DD)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .prologue
    .line 6284
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 6285
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6286
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    .line 6288
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .prologue
    .line 6349
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 6350
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6351
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    .line 6353
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    .line 6414
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 6415
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6416
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    .line 6418
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([JJ)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .prologue
    .line 6479
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 6480
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6481
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    .line 6483
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 6024
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 6025
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6026
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 6028
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .prologue
    .line 6544
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 6545
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6546
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    .line 6548
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v1

    goto :goto_0
.end method

.method public static removeElement([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .prologue
    .line 6089
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 6090
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6091
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    .line 6093
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    goto :goto_0
.end method

.method public static varargs removeElements([B[B)[B
    .locals 11
    .param p0, "array"    # [B
    .param p1, "values"    # [B

    .prologue
    .line 6737
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6738
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v7

    .line 6761
    :goto_0
    return-object v7

    .line 6740
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    array-length v7, p1

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 6741
    .local v4, "occurrences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-byte v6, p1, v7

    .line 6742
    .local v6, "v":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 6743
    .local v0, "boxed":Ljava/lang/Byte;
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6744
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 6745
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6741
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6747
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6750
    .end local v0    # "boxed":Ljava/lang/Byte;
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6    # "v":B
    :cond_3
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 6751
    .local v5, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 6752
    aget-byte v3, p0, v2

    .line 6753
    .local v3, "key":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6754
    .restart local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v1, :cond_5

    .line 6755
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 6756
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6758
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 6751
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6761
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v3    # "key":B
    :cond_6
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    goto :goto_0
.end method

.method public static varargs removeElements([C[C)[C
    .locals 11
    .param p0, "array"    # [C
    .param p1, "values"    # [C

    .prologue
    .line 7001
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7002
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v7

    .line 7025
    :goto_0
    return-object v7

    .line 7004
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    array-length v7, p1

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 7005
    .local v4, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-char v6, p1, v7

    .line 7006
    .local v6, "v":C
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 7007
    .local v0, "boxed":Ljava/lang/Character;
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7008
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 7009
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7005
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7011
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 7014
    .end local v0    # "boxed":Ljava/lang/Character;
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6    # "v":C
    :cond_3
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 7015
    .local v5, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 7016
    aget-char v3, p0, v2

    .line 7017
    .local v3, "key":C
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7018
    .restart local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v1, :cond_5

    .line 7019
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 7020
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7022
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 7015
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7025
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v3    # "key":C
    :cond_6
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    check-cast v7, [C

    goto :goto_0
.end method

.method public static varargs removeElements([D[D)[D
    .locals 13
    .param p0, "array"    # [D
    .param p1, "values"    # [D

    .prologue
    .line 7265
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7266
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v7

    .line 7289
    :goto_0
    return-object v7

    .line 7268
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v7, p1

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 7269
    .local v3, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v10, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_3

    aget-wide v8, p1, v7

    .line 7270
    .local v8, "v":D
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 7271
    .local v0, "boxed":Ljava/lang/Double;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7272
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 7273
    new-instance v11, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7269
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7275
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 7278
    .end local v0    # "boxed":Ljava/lang/Double;
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v8    # "v":D
    :cond_3
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 7279
    .local v6, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 7280
    aget-wide v4, p0, v2

    .line 7281
    .local v4, "key":D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7282
    .restart local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v1, :cond_5

    .line 7283
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 7284
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7286
    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 7279
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7289
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v4    # "key":D
    :cond_6
    invoke-static {p0, v6}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    check-cast v7, [D

    goto :goto_0
.end method

.method public static varargs removeElements([F[F)[F
    .locals 11
    .param p0, "array"    # [F
    .param p1, "values"    # [F

    .prologue
    .line 7177
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7178
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v7

    .line 7201
    :goto_0
    return-object v7

    .line 7180
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    array-length v7, p1

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 7181
    .local v4, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget v6, p1, v7

    .line 7182
    .local v6, "v":F
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 7183
    .local v0, "boxed":Ljava/lang/Float;
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7184
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 7185
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7181
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7187
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 7190
    .end local v0    # "boxed":Ljava/lang/Float;
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6    # "v":F
    :cond_3
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 7191
    .local v5, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 7192
    aget v3, p0, v2

    .line 7193
    .local v3, "key":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7194
    .restart local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v1, :cond_5

    .line 7195
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 7196
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7198
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 7191
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7201
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v3    # "key":F
    :cond_6
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    check-cast v7, [F

    goto :goto_0
.end method

.method public static varargs removeElements([I[I)[I
    .locals 11
    .param p0, "array"    # [I
    .param p1, "values"    # [I

    .prologue
    .line 6913
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6914
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v7

    .line 6937
    :goto_0
    return-object v7

    .line 6916
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    array-length v7, p1

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 6917
    .local v4, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget v6, p1, v7

    .line 6918
    .local v6, "v":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6919
    .local v0, "boxed":Ljava/lang/Integer;
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6920
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 6921
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6917
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6923
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6926
    .end local v0    # "boxed":Ljava/lang/Integer;
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6    # "v":I
    :cond_3
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 6927
    .local v5, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 6928
    aget v3, p0, v2

    .line 6929
    .local v3, "key":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6930
    .restart local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v1, :cond_5

    .line 6931
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 6932
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6934
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 6927
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6937
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v3    # "key":I
    :cond_6
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    goto :goto_0
.end method

.method public static varargs removeElements([J[J)[J
    .locals 13
    .param p0, "array"    # [J
    .param p1, "values"    # [J

    .prologue
    .line 7089
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7090
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v7

    .line 7113
    :goto_0
    return-object v7

    .line 7092
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v7, p1

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 7093
    .local v3, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v10, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_3

    aget-wide v8, p1, v7

    .line 7094
    .local v8, "v":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7095
    .local v0, "boxed":Ljava/lang/Long;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7096
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 7097
    new-instance v11, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7093
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7099
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 7102
    .end local v0    # "boxed":Ljava/lang/Long;
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v8    # "v":J
    :cond_3
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 7103
    .local v6, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 7104
    aget-wide v4, p0, v2

    .line 7105
    .local v4, "key":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7106
    .restart local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v1, :cond_5

    .line 7107
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 7108
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7110
    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 7103
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7113
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v4    # "key":J
    :cond_6
    invoke-static {p0, v6}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    check-cast v7, [J

    goto :goto_0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 6648
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6649
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 6673
    :goto_0
    return-object v4

    .line 6651
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v7, p1

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 6652
    .local v3, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v6, p1, v7

    .line 6653
    .local v6, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6654
    .local v0, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v0, :cond_2

    .line 6655
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6652
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6657
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6660
    .end local v0    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 6661
    .local v5, "toRemove":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v7, p0

    if-ge v1, v7, :cond_6

    .line 6662
    aget-object v2, p0, v1

    .line 6663
    .local v2, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6664
    .restart local v0    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v0, :cond_5

    .line 6665
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 6666
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6668
    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/BitSet;->set(I)V

    .line 6661
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6672
    .end local v0    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v2    # "key":Ljava/lang/Object;, "TT;"
    :cond_6
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 6673
    .local v4, "result":[Ljava/lang/Object;, "[TT;"
    goto :goto_0
.end method

.method public static varargs removeElements([S[S)[S
    .locals 11
    .param p0, "array"    # [S
    .param p1, "values"    # [S

    .prologue
    .line 6825
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6826
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v7

    .line 6849
    :goto_0
    return-object v7

    .line 6828
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    array-length v7, p1

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 6829
    .local v4, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Short;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-short v6, p1, v7

    .line 6830
    .local v6, "v":S
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 6831
    .local v0, "boxed":Ljava/lang/Short;
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6832
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 6833
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6829
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 6835
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 6838
    .end local v0    # "boxed":Ljava/lang/Short;
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6    # "v":S
    :cond_3
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 6839
    .local v5, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 6840
    aget-short v3, p0, v2

    .line 6841
    .local v3, "key":S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6842
    .restart local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v1, :cond_5

    .line 6843
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 6844
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6846
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 6839
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6849
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v3    # "key":S
    :cond_6
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [S

    check-cast v7, [S

    goto :goto_0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .locals 11
    .param p0, "array"    # [Z
    .param p1, "values"    # [Z

    .prologue
    .line 7349
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7350
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v7

    .line 7373
    :goto_0
    return-object v7

    .line 7352
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 7353
    .local v4, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    aget-boolean v6, p1, v7

    .line 7354
    .local v6, "v":Z
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 7355
    .local v0, "boxed":Ljava/lang/Boolean;
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7356
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_2

    .line 7357
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7353
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 7359
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 7362
    .end local v0    # "boxed":Ljava/lang/Boolean;
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6    # "v":Z
    :cond_3
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 7363
    .local v5, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v7, p0

    if-ge v2, v7, :cond_6

    .line 7364
    aget-boolean v3, p0, v2

    .line 7365
    .local v3, "key":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 7366
    .restart local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v1, :cond_5

    .line 7367
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v7

    if-nez v7, :cond_4

    .line 7368
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7370
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    .line 7363
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7373
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v3    # "key":Z
    :cond_6
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Z

    check-cast v7, [Z

    goto :goto_0
.end method

.method public static reverse([B)V
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 1488
    if-nez p0, :cond_0

    .line 1492
    :goto_0
    return-void

    .line 1491
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([BII)V

    goto :goto_0
.end method

.method public static reverse([BII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1587
    if-nez p0, :cond_1

    .line 1600
    :cond_0
    return-void

    .line 1590
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1591
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1593
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1594
    aget-byte v2, p0, v1

    .line 1595
    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 1596
    aput-byte v2, p0, v0

    .line 1597
    add-int/lit8 v1, v1, -0x1

    .line 1598
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":B
    :cond_2
    move v0, p1

    .line 1590
    goto :goto_0
.end method

.method public static reverse([C)V
    .locals 2
    .param p0, "array"    # [C

    .prologue
    .line 1474
    if-nez p0, :cond_0

    .line 1478
    :goto_0
    return-void

    .line 1477
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([CII)V

    goto :goto_0
.end method

.method public static reverse([CII)V
    .locals 4
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1620
    if-nez p0, :cond_1

    .line 1633
    :cond_0
    return-void

    .line 1623
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1624
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1626
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1627
    aget-char v2, p0, v1

    .line 1628
    .local v2, "tmp":C
    aget-char v3, p0, v0

    aput-char v3, p0, v1

    .line 1629
    aput-char v2, p0, v0

    .line 1630
    add-int/lit8 v1, v1, -0x1

    .line 1631
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":C
    :cond_2
    move v0, p1

    .line 1623
    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 2
    .param p0, "array"    # [D

    .prologue
    .line 1502
    if-nez p0, :cond_0

    .line 1506
    :goto_0
    return-void

    .line 1505
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([DII)V

    goto :goto_0
.end method

.method public static reverse([DII)V
    .locals 6
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1653
    if-nez p0, :cond_1

    .line 1666
    :cond_0
    return-void

    .line 1656
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1657
    .local v0, "i":I
    :goto_0
    array-length v4, p0

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 1659
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1660
    aget-wide v2, p0, v1

    .line 1661
    .local v2, "tmp":D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1662
    aput-wide v2, p0, v0

    .line 1663
    add-int/lit8 v1, v1, -0x1

    .line 1664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":D
    :cond_2
    move v0, p1

    .line 1656
    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 2
    .param p0, "array"    # [F

    .prologue
    .line 1516
    if-nez p0, :cond_0

    .line 1520
    :goto_0
    return-void

    .line 1519
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([FII)V

    goto :goto_0
.end method

.method public static reverse([FII)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1686
    if-nez p0, :cond_1

    .line 1699
    :cond_0
    return-void

    .line 1689
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1690
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1692
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1693
    aget v2, p0, v1

    .line 1694
    .local v2, "tmp":F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1695
    aput v2, p0, v0

    .line 1696
    add-int/lit8 v1, v1, -0x1

    .line 1697
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":F
    :cond_2
    move v0, p1

    .line 1689
    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 2
    .param p0, "array"    # [I

    .prologue
    .line 1446
    if-nez p0, :cond_0

    .line 1450
    :goto_0
    return-void

    .line 1449
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([III)V

    goto :goto_0
.end method

.method public static reverse([III)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1719
    if-nez p0, :cond_1

    .line 1732
    :cond_0
    return-void

    .line 1722
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1723
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1725
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1726
    aget v2, p0, v1

    .line 1727
    .local v2, "tmp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 1728
    aput v2, p0, v0

    .line 1729
    add-int/lit8 v1, v1, -0x1

    .line 1730
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":I
    :cond_2
    move v0, p1

    .line 1722
    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 2
    .param p0, "array"    # [J

    .prologue
    .line 1432
    if-nez p0, :cond_0

    .line 1436
    :goto_0
    return-void

    .line 1435
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([JII)V

    goto :goto_0
.end method

.method public static reverse([JII)V
    .locals 6
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1752
    if-nez p0, :cond_1

    .line 1765
    :cond_0
    return-void

    .line 1755
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1756
    .local v0, "i":I
    :goto_0
    array-length v4, p0

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 1758
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1759
    aget-wide v2, p0, v1

    .line 1760
    .local v2, "tmp":J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 1761
    aput-wide v2, p0, v0

    .line 1762
    add-int/lit8 v1, v1, -0x1

    .line 1763
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":J
    :cond_2
    move v0, p1

    .line 1755
    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 1418
    if-nez p0, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1421
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1785
    if-nez p0, :cond_1

    .line 1798
    :cond_0
    return-void

    .line 1788
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1789
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1791
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1792
    aget-object v2, p0, v1

    .line 1793
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1794
    aput-object v2, p0, v0

    .line 1795
    add-int/lit8 v1, v1, -0x1

    .line 1796
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_2
    move v0, p1

    .line 1788
    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 2
    .param p0, "array"    # [S

    .prologue
    .line 1460
    if-nez p0, :cond_0

    .line 1464
    :goto_0
    return-void

    .line 1463
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([SII)V

    goto :goto_0
.end method

.method public static reverse([SII)V
    .locals 4
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1818
    if-nez p0, :cond_1

    .line 1831
    :cond_0
    return-void

    .line 1821
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1822
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1824
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1825
    aget-short v2, p0, v1

    .line 1826
    .local v2, "tmp":S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 1827
    aput-short v2, p0, v0

    .line 1828
    add-int/lit8 v1, v1, -0x1

    .line 1829
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":S
    :cond_2
    move v0, p1

    .line 1821
    goto :goto_0
.end method

.method public static reverse([Z)V
    .locals 2
    .param p0, "array"    # [Z

    .prologue
    .line 1530
    if-nez p0, :cond_0

    .line 1534
    :goto_0
    return-void

    .line 1533
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([ZII)V

    goto :goto_0
.end method

.method public static reverse([ZII)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1554
    if-nez p0, :cond_1

    .line 1567
    :cond_0
    return-void

    .line 1557
    :cond_1
    if-gez p1, :cond_2

    const/4 v0, 0x0

    .line 1558
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1560
    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_0

    .line 1561
    aget-boolean v2, p0, v1

    .line 1562
    .local v2, "tmp":Z
    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    .line 1563
    aput-boolean v2, p0, v0

    .line 1564
    add-int/lit8 v1, v1, -0x1

    .line 1565
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "tmp":Z
    :cond_2
    move v0, p1

    .line 1557
    goto :goto_0
.end method

.method public static shift([BI)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 2580
    if-nez p0, :cond_0

    .line 2584
    :goto_0
    return-void

    .line 2583
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([BIII)V

    goto :goto_0
.end method

.method public static shift([BIII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 2723
    if-nez p0, :cond_1

    .line 2761
    :cond_0
    :goto_0
    return-void

    .line 2726
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 2729
    if-gez p1, :cond_2

    .line 2730
    const/4 p1, 0x0

    .line 2732
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2733
    array-length p2, p0

    .line 2735
    :cond_3
    sub-int v0, p2, p1

    .line 2736
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 2739
    rem-int/2addr p3, v0

    .line 2740
    if-gez p3, :cond_4

    .line 2741
    add-int/2addr p3, v0

    .line 2745
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 2746
    sub-int v1, v0, p3

    .line 2748
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 2749
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 2750
    move v0, p3

    .line 2751
    sub-int/2addr p3, v1

    goto :goto_1

    .line 2752
    :cond_5
    if-ge p3, v1, :cond_6

    .line 2753
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 2754
    add-int/2addr p1, p3

    .line 2755
    move v0, v1

    goto :goto_1

    .line 2757
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    goto :goto_0
.end method

.method public static shift([CI)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "offset"    # I

    .prologue
    .line 2561
    if-nez p0, :cond_0

    .line 2565
    :goto_0
    return-void

    .line 2564
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([CIII)V

    goto :goto_0
.end method

.method public static shift([CIII)V
    .locals 4
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 2783
    if-nez p0, :cond_1

    .line 2821
    :cond_0
    :goto_0
    return-void

    .line 2786
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 2789
    if-gez p1, :cond_2

    .line 2790
    const/4 p1, 0x0

    .line 2792
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2793
    array-length p2, p0

    .line 2795
    :cond_3
    sub-int v0, p2, p1

    .line 2796
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 2799
    rem-int/2addr p3, v0

    .line 2800
    if-gez p3, :cond_4

    .line 2801
    add-int/2addr p3, v0

    .line 2805
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 2806
    sub-int v1, v0, p3

    .line 2808
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 2809
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 2810
    move v0, p3

    .line 2811
    sub-int/2addr p3, v1

    goto :goto_1

    .line 2812
    :cond_5
    if-ge p3, v1, :cond_6

    .line 2813
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 2814
    add-int/2addr p1, p3

    .line 2815
    move v0, v1

    goto :goto_1

    .line 2817
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    goto :goto_0
.end method

.method public static shift([DI)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "offset"    # I

    .prologue
    .line 2599
    if-nez p0, :cond_0

    .line 2603
    :goto_0
    return-void

    .line 2602
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([DIII)V

    goto :goto_0
.end method

.method public static shift([DIII)V
    .locals 4
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 2843
    if-nez p0, :cond_1

    .line 2881
    :cond_0
    :goto_0
    return-void

    .line 2846
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 2849
    if-gez p1, :cond_2

    .line 2850
    const/4 p1, 0x0

    .line 2852
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2853
    array-length p2, p0

    .line 2855
    :cond_3
    sub-int v0, p2, p1

    .line 2856
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 2859
    rem-int/2addr p3, v0

    .line 2860
    if-gez p3, :cond_4

    .line 2861
    add-int/2addr p3, v0

    .line 2865
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 2866
    sub-int v1, v0, p3

    .line 2868
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 2869
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 2870
    move v0, p3

    .line 2871
    sub-int/2addr p3, v1

    goto :goto_1

    .line 2872
    :cond_5
    if-ge p3, v1, :cond_6

    .line 2873
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 2874
    add-int/2addr p1, p3

    .line 2875
    move v0, v1

    goto :goto_1

    .line 2877
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    goto :goto_0
.end method

.method public static shift([FI)V
    .locals 2
    .param p0, "array"    # [F
    .param p1, "offset"    # I

    .prologue
    .line 2618
    if-nez p0, :cond_0

    .line 2622
    :goto_0
    return-void

    .line 2621
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([FIII)V

    goto :goto_0
.end method

.method public static shift([FIII)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 2903
    if-nez p0, :cond_1

    .line 2941
    :cond_0
    :goto_0
    return-void

    .line 2906
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 2909
    if-gez p1, :cond_2

    .line 2910
    const/4 p1, 0x0

    .line 2912
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2913
    array-length p2, p0

    .line 2915
    :cond_3
    sub-int v0, p2, p1

    .line 2916
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 2919
    rem-int/2addr p3, v0

    .line 2920
    if-gez p3, :cond_4

    .line 2921
    add-int/2addr p3, v0

    .line 2925
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 2926
    sub-int v1, v0, p3

    .line 2928
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 2929
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 2930
    move v0, p3

    .line 2931
    sub-int/2addr p3, v1

    goto :goto_1

    .line 2932
    :cond_5
    if-ge p3, v1, :cond_6

    .line 2933
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 2934
    add-int/2addr p1, p3

    .line 2935
    move v0, v1

    goto :goto_1

    .line 2937
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    goto :goto_0
.end method

.method public static shift([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "offset"    # I

    .prologue
    .line 2523
    if-nez p0, :cond_0

    .line 2527
    :goto_0
    return-void

    .line 2526
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([IIII)V

    goto :goto_0
.end method

.method public static shift([IIII)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 2963
    if-nez p0, :cond_1

    .line 3001
    :cond_0
    :goto_0
    return-void

    .line 2966
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 2969
    if-gez p1, :cond_2

    .line 2970
    const/4 p1, 0x0

    .line 2972
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2973
    array-length p2, p0

    .line 2975
    :cond_3
    sub-int v0, p2, p1

    .line 2976
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 2979
    rem-int/2addr p3, v0

    .line 2980
    if-gez p3, :cond_4

    .line 2981
    add-int/2addr p3, v0

    .line 2985
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 2986
    sub-int v1, v0, p3

    .line 2988
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 2989
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 2990
    move v0, p3

    .line 2991
    sub-int/2addr p3, v1

    goto :goto_1

    .line 2992
    :cond_5
    if-ge p3, v1, :cond_6

    .line 2993
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 2994
    add-int/2addr p1, p3

    .line 2995
    move v0, v1

    goto :goto_1

    .line 2997
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    goto :goto_0
.end method

.method public static shift([JI)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "offset"    # I

    .prologue
    .line 2504
    if-nez p0, :cond_0

    .line 2508
    :goto_0
    return-void

    .line 2507
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([JIII)V

    goto :goto_0
.end method

.method public static shift([JIII)V
    .locals 4
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 3023
    if-nez p0, :cond_1

    .line 3061
    :cond_0
    :goto_0
    return-void

    .line 3026
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 3029
    if-gez p1, :cond_2

    .line 3030
    const/4 p1, 0x0

    .line 3032
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 3033
    array-length p2, p0

    .line 3035
    :cond_3
    sub-int v0, p2, p1

    .line 3036
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 3039
    rem-int/2addr p3, v0

    .line 3040
    if-gez p3, :cond_4

    .line 3041
    add-int/2addr p3, v0

    .line 3045
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 3046
    sub-int v1, v0, p3

    .line 3048
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 3049
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 3050
    move v0, p3

    .line 3051
    sub-int/2addr p3, v1

    goto :goto_1

    .line 3052
    :cond_5
    if-ge p3, v1, :cond_6

    .line 3053
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 3054
    add-int/2addr p1, p3

    .line 3055
    move v0, v1

    goto :goto_1

    .line 3057
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    goto :goto_0
.end method

.method public static shift([Ljava/lang/Object;I)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "offset"    # I

    .prologue
    .line 2485
    if-nez p0, :cond_0

    .line 2489
    :goto_0
    return-void

    .line 2488
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static shift([Ljava/lang/Object;III)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 3083
    if-nez p0, :cond_1

    .line 3121
    :cond_0
    :goto_0
    return-void

    .line 3086
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 3089
    if-gez p1, :cond_2

    .line 3090
    const/4 p1, 0x0

    .line 3092
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 3093
    array-length p2, p0

    .line 3095
    :cond_3
    sub-int v0, p2, p1

    .line 3096
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 3099
    rem-int/2addr p3, v0

    .line 3100
    if-gez p3, :cond_4

    .line 3101
    add-int/2addr p3, v0

    .line 3105
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 3106
    sub-int v1, v0, p3

    .line 3108
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 3109
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 3110
    move v0, p3

    .line 3111
    sub-int/2addr p3, v1

    goto :goto_1

    .line 3112
    :cond_5
    if-ge p3, v1, :cond_6

    .line 3113
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 3114
    add-int/2addr p1, p3

    .line 3115
    move v0, v1

    goto :goto_1

    .line 3117
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static shift([SI)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "offset"    # I

    .prologue
    .line 2542
    if-nez p0, :cond_0

    .line 2546
    :goto_0
    return-void

    .line 2545
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([SIII)V

    goto :goto_0
.end method

.method public static shift([SIII)V
    .locals 4
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 3143
    if-nez p0, :cond_1

    .line 3181
    :cond_0
    :goto_0
    return-void

    .line 3146
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 3149
    if-gez p1, :cond_2

    .line 3150
    const/4 p1, 0x0

    .line 3152
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 3153
    array-length p2, p0

    .line 3155
    :cond_3
    sub-int v0, p2, p1

    .line 3156
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 3159
    rem-int/2addr p3, v0

    .line 3160
    if-gez p3, :cond_4

    .line 3161
    add-int/2addr p3, v0

    .line 3165
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 3166
    sub-int v1, v0, p3

    .line 3168
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 3169
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 3170
    move v0, p3

    .line 3171
    sub-int/2addr p3, v1

    goto :goto_1

    .line 3172
    :cond_5
    if-ge p3, v1, :cond_6

    .line 3173
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 3174
    add-int/2addr p1, p3

    .line 3175
    move v0, v1

    goto :goto_1

    .line 3177
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    goto :goto_0
.end method

.method public static shift([ZI)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "offset"    # I

    .prologue
    .line 2637
    if-nez p0, :cond_0

    .line 2641
    :goto_0
    return-void

    .line 2640
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([ZIII)V

    goto :goto_0
.end method

.method public static shift([ZIII)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .prologue
    const/4 v3, 0x1

    .line 2663
    if-nez p0, :cond_1

    .line 2701
    :cond_0
    :goto_0
    return-void

    .line 2666
    :cond_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    if-lez p2, :cond_0

    .line 2669
    if-gez p1, :cond_2

    .line 2670
    const/4 p1, 0x0

    .line 2672
    :cond_2
    array-length v2, p0

    if-lt p2, v2, :cond_3

    .line 2673
    array-length p2, p0

    .line 2675
    :cond_3
    sub-int v0, p2, p1

    .line 2676
    .local v0, "n":I
    if-le v0, v3, :cond_0

    .line 2679
    rem-int/2addr p3, v0

    .line 2680
    if-gez p3, :cond_4

    .line 2681
    add-int/2addr p3, v0

    .line 2685
    :cond_4
    :goto_1
    if-le v0, v3, :cond_0

    if-lez p3, :cond_0

    .line 2686
    sub-int v1, v0, p3

    .line 2688
    .local v1, "n_offset":I
    if-le p3, v1, :cond_5

    .line 2689
    add-int v2, p1, v0

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 2690
    move v0, p3

    .line 2691
    sub-int/2addr p3, v1

    goto :goto_1

    .line 2692
    :cond_5
    if-ge p3, v1, :cond_6

    .line 2693
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 2694
    add-int/2addr p1, p3

    .line 2695
    move v0, v1

    goto :goto_1

    .line 2697
    :cond_6
    add-int v2, p1, v1

    invoke-static {p0, p1, v2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    goto :goto_0
.end method

.method public static shuffle([B)V
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 8509
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([BLjava/util/Random;)V

    .line 8510
    return-void
.end method

.method public static shuffle([BLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8521
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8522
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 8521
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8524
    :cond_0
    return-void
.end method

.method public static shuffle([C)V
    .locals 1
    .param p0, "array"    # [C

    .prologue
    .line 8534
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([CLjava/util/Random;)V

    .line 8535
    return-void
.end method

.method public static shuffle([CLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [C
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8546
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8547
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 8546
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8549
    :cond_0
    return-void
.end method

.method public static shuffle([D)V
    .locals 1
    .param p0, "array"    # [D

    .prologue
    .line 8659
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([DLjava/util/Random;)V

    .line 8660
    return-void
.end method

.method public static shuffle([DLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [D
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8671
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8672
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 8671
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8674
    :cond_0
    return-void
.end method

.method public static shuffle([F)V
    .locals 1
    .param p0, "array"    # [F

    .prologue
    .line 8634
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([FLjava/util/Random;)V

    .line 8635
    return-void
.end method

.method public static shuffle([FLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8646
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8647
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 8646
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8649
    :cond_0
    return-void
.end method

.method public static shuffle([I)V
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 8584
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ILjava/util/Random;)V

    .line 8585
    return-void
.end method

.method public static shuffle([ILjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8596
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8597
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 8596
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8599
    :cond_0
    return-void
.end method

.method public static shuffle([J)V
    .locals 1
    .param p0, "array"    # [J

    .prologue
    .line 8609
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([JLjava/util/Random;)V

    .line 8610
    return-void
.end method

.method public static shuffle([JLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [J
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8621
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8622
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 8621
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8624
    :cond_0
    return-void
.end method

.method public static shuffle([Ljava/lang/Object;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 8459
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([Ljava/lang/Object;Ljava/util/Random;)V

    .line 8460
    return-void
.end method

.method public static shuffle([Ljava/lang/Object;Ljava/util/Random;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8471
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8472
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 8471
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8474
    :cond_0
    return-void
.end method

.method public static shuffle([S)V
    .locals 1
    .param p0, "array"    # [S

    .prologue
    .line 8559
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([SLjava/util/Random;)V

    .line 8560
    return-void
.end method

.method public static shuffle([SLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [S
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8571
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8572
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 8571
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8574
    :cond_0
    return-void
.end method

.method public static shuffle([Z)V
    .locals 1
    .param p0, "array"    # [Z

    .prologue
    .line 8484
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ZLjava/util/Random;)V

    .line 8485
    return-void
.end method

.method public static shuffle([ZLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    const/4 v3, 0x1

    .line 8496
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    if-le v0, v3, :cond_0

    .line 8497
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {p0, v1, v2, v3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 8496
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8499
    :cond_0
    return-void
.end method

.method public static subarray([BII)[B
    .locals 3
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1102
    if-nez p0, :cond_0

    .line 1103
    const/4 v1, 0x0

    .line 1118
    :goto_0
    return-object v1

    .line 1105
    :cond_0
    if-gez p1, :cond_1

    .line 1106
    const/4 p1, 0x0

    .line 1108
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1109
    array-length p2, p0

    .line 1111
    :cond_2
    sub-int v0, p2, p1

    .line 1112
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1113
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 1116
    :cond_3
    new-array v1, v0, [B

    .line 1117
    .local v1, "subarray":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1062
    if-nez p0, :cond_0

    .line 1063
    const/4 v1, 0x0

    .line 1078
    :goto_0
    return-object v1

    .line 1065
    :cond_0
    if-gez p1, :cond_1

    .line 1066
    const/4 p1, 0x0

    .line 1068
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1069
    array-length p2, p0

    .line 1071
    :cond_2
    sub-int v0, p2, p1

    .line 1072
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1073
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 1076
    :cond_3
    new-array v1, v0, [C

    .line 1077
    .local v1, "subarray":[C
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([DII)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1142
    if-nez p0, :cond_0

    .line 1143
    const/4 v1, 0x0

    .line 1158
    :goto_0
    return-object v1

    .line 1145
    :cond_0
    if-gez p1, :cond_1

    .line 1146
    const/4 p1, 0x0

    .line 1148
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1149
    array-length p2, p0

    .line 1151
    :cond_2
    sub-int v0, p2, p1

    .line 1152
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1153
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 1156
    :cond_3
    new-array v1, v0, [D

    .line 1157
    .local v1, "subarray":[D
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([FII)[F
    .locals 3
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1182
    if-nez p0, :cond_0

    .line 1183
    const/4 v1, 0x0

    .line 1198
    :goto_0
    return-object v1

    .line 1185
    :cond_0
    if-gez p1, :cond_1

    .line 1186
    const/4 p1, 0x0

    .line 1188
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1189
    array-length p2, p0

    .line 1191
    :cond_2
    sub-int v0, p2, p1

    .line 1192
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1193
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 1196
    :cond_3
    new-array v1, v0, [F

    .line 1197
    .local v1, "subarray":[F
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([III)[I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 982
    if-nez p0, :cond_0

    .line 983
    const/4 v1, 0x0

    .line 998
    :goto_0
    return-object v1

    .line 985
    :cond_0
    if-gez p1, :cond_1

    .line 986
    const/4 p1, 0x0

    .line 988
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 989
    array-length p2, p0

    .line 991
    :cond_2
    sub-int v0, p2, p1

    .line 992
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 993
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 996
    :cond_3
    new-array v1, v0, [I

    .line 997
    .local v1, "subarray":[I
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([JII)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 942
    if-nez p0, :cond_0

    .line 943
    const/4 v1, 0x0

    .line 958
    :goto_0
    return-object v1

    .line 945
    :cond_0
    if-gez p1, :cond_1

    .line 946
    const/4 p1, 0x0

    .line 948
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 949
    array-length p2, p0

    .line 951
    :cond_2
    sub-int v0, p2, p1

    .line 952
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 953
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 956
    :cond_3
    new-array v1, v0, [J

    .line 957
    .local v1, "subarray":[J
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 6
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    .line 898
    if-nez p0, :cond_0

    .line 899
    const/4 v0, 0x0

    .line 918
    :goto_0
    return-object v0

    .line 901
    :cond_0
    if-gez p1, :cond_1

    .line 902
    const/4 p1, 0x0

    .line 904
    :cond_1
    array-length v4, p0

    if-le p2, v4, :cond_2

    .line 905
    array-length p2, p0

    .line 907
    :cond_2
    sub-int v1, p2, p1

    .line 908
    .local v1, "newSize":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 909
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-gtz v1, :cond_3

    .line 911
    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    .line 912
    .local v0, "emptyArray":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 916
    .end local v0    # "emptyArray":[Ljava/lang/Object;, "[TT;"
    :cond_3
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 917
    .local v2, "subarray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 918
    goto :goto_0
.end method

.method public static subarray([SII)[S
    .locals 3
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1022
    if-nez p0, :cond_0

    .line 1023
    const/4 v1, 0x0

    .line 1038
    :goto_0
    return-object v1

    .line 1025
    :cond_0
    if-gez p1, :cond_1

    .line 1026
    const/4 p1, 0x0

    .line 1028
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1029
    array-length p2, p0

    .line 1031
    :cond_2
    sub-int v0, p2, p1

    .line 1032
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1033
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 1036
    :cond_3
    new-array v1, v0, [S

    .line 1037
    .local v1, "subarray":[S
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([ZII)[Z
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .prologue
    .line 1222
    if-nez p0, :cond_0

    .line 1223
    const/4 v1, 0x0

    .line 1238
    :goto_0
    return-object v1

    .line 1225
    :cond_0
    if-gez p1, :cond_1

    .line 1226
    const/4 p1, 0x0

    .line 1228
    :cond_1
    array-length v2, p0

    if-le p2, v2, :cond_2

    .line 1229
    array-length p2, p0

    .line 1231
    :cond_2
    sub-int v0, p2, p1

    .line 1232
    .local v0, "newSize":I
    if-gtz v0, :cond_3

    .line 1233
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 1236
    :cond_3
    new-array v1, v0, [Z

    .line 1237
    .local v1, "subarray":[Z
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static swap([BII)V
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 1998
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2002
    :cond_0
    :goto_0
    return-void

    .line 2001
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    goto :goto_0
.end method

.method public static swap([BIII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2155
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ge p1, v2, :cond_0

    array-length v2, p0

    if-lt p2, v2, :cond_1

    .line 2170
    :cond_0
    return-void

    .line 2158
    :cond_1
    if-gez p1, :cond_2

    .line 2159
    const/4 p1, 0x0

    .line 2161
    :cond_2
    if-gez p2, :cond_3

    .line 2162
    const/4 p2, 0x0

    .line 2164
    :cond_3
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2166
    aget-byte v0, p0, p1

    .line 2167
    .local v0, "aux":B
    aget-byte v2, p0, p2

    aput-byte v2, p0, p1

    .line 2168
    aput-byte v0, p0, p2

    .line 2165
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static swap([CII)V
    .locals 1
    .param p0, "array"    # [C
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 1970
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1974
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    goto :goto_0
.end method

.method public static swap([CIII)V
    .locals 4
    .param p0, "array"    # [C
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2197
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ge p1, v2, :cond_0

    array-length v2, p0

    if-lt p2, v2, :cond_1

    .line 2212
    :cond_0
    return-void

    .line 2200
    :cond_1
    if-gez p1, :cond_2

    .line 2201
    const/4 p1, 0x0

    .line 2203
    :cond_2
    if-gez p2, :cond_3

    .line 2204
    const/4 p2, 0x0

    .line 2206
    :cond_3
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2208
    aget-char v0, p0, p1

    .line 2209
    .local v0, "aux":C
    aget-char v2, p0, p2

    aput-char v2, p0, p1

    .line 2210
    aput-char v0, p0, p2

    .line 2207
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static swap([DII)V
    .locals 1
    .param p0, "array"    # [D
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 2026
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2029
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    goto :goto_0
.end method

.method public static swap([DIII)V
    .locals 6
    .param p0, "array"    # [D
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2239
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    array-length v3, p0

    if-ge p1, v3, :cond_0

    array-length v3, p0

    if-lt p2, v3, :cond_1

    .line 2254
    :cond_0
    return-void

    .line 2242
    :cond_1
    if-gez p1, :cond_2

    .line 2243
    const/4 p1, 0x0

    .line 2245
    :cond_2
    if-gez p2, :cond_3

    .line 2246
    const/4 p2, 0x0

    .line 2248
    :cond_3
    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    array-length v4, p0

    sub-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2249
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 2250
    aget-wide v0, p0, p1

    .line 2251
    .local v0, "aux":D
    aget-wide v4, p0, p2

    aput-wide v4, p0, p1

    .line 2252
    aput-wide v0, p0, p2

    .line 2249
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static swap([FII)V
    .locals 1
    .param p0, "array"    # [F
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 2054
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2058
    :cond_0
    :goto_0
    return-void

    .line 2057
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    goto :goto_0
.end method

.method public static swap([FIII)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2281
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ge p1, v2, :cond_0

    array-length v2, p0

    if-lt p2, v2, :cond_1

    .line 2297
    :cond_0
    return-void

    .line 2284
    :cond_1
    if-gez p1, :cond_2

    .line 2285
    const/4 p1, 0x0

    .line 2287
    :cond_2
    if-gez p2, :cond_3

    .line 2288
    const/4 p2, 0x0

    .line 2290
    :cond_3
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2292
    aget v0, p0, p1

    .line 2293
    .local v0, "aux":F
    aget v2, p0, p2

    aput v2, p0, p1

    .line 2294
    aput v0, p0, p2

    .line 2291
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static swap([III)V
    .locals 1
    .param p0, "array"    # [I
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 1914
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1917
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    goto :goto_0
.end method

.method public static swap([IIII)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2324
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ge p1, v2, :cond_0

    array-length v2, p0

    if-lt p2, v2, :cond_1

    .line 2339
    :cond_0
    return-void

    .line 2327
    :cond_1
    if-gez p1, :cond_2

    .line 2328
    const/4 p1, 0x0

    .line 2330
    :cond_2
    if-gez p2, :cond_3

    .line 2331
    const/4 p2, 0x0

    .line 2333
    :cond_3
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2335
    aget v0, p0, p1

    .line 2336
    .local v0, "aux":I
    aget v2, p0, p2

    aput v2, p0, p1

    .line 2337
    aput v0, p0, p2

    .line 2334
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static swap([JII)V
    .locals 1
    .param p0, "array"    # [J
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 1886
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1890
    :cond_0
    :goto_0
    return-void

    .line 1889
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    goto :goto_0
.end method

.method public static swap([JIII)V
    .locals 6
    .param p0, "array"    # [J
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2366
    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    array-length v3, p0

    if-ge p1, v3, :cond_0

    array-length v3, p0

    if-lt p2, v3, :cond_1

    .line 2381
    :cond_0
    return-void

    .line 2369
    :cond_1
    if-gez p1, :cond_2

    .line 2370
    const/4 p1, 0x0

    .line 2372
    :cond_2
    if-gez p2, :cond_3

    .line 2373
    const/4 p2, 0x0

    .line 2375
    :cond_3
    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    array-length v4, p0

    sub-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2376
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 2377
    aget-wide v0, p0, p1

    .line 2378
    .local v0, "aux":J
    aget-wide v4, p0, p2

    aput-wide v4, p0, p1

    .line 2379
    aput-wide v0, p0, p2

    .line 2376
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static swap([Ljava/lang/Object;II)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 1857
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1861
    :cond_0
    :goto_0
    return-void

    .line 1860
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static swap([Ljava/lang/Object;III)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2408
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ge p1, v2, :cond_0

    array-length v2, p0

    if-lt p2, v2, :cond_1

    .line 2423
    :cond_0
    return-void

    .line 2411
    :cond_1
    if-gez p1, :cond_2

    .line 2412
    const/4 p1, 0x0

    .line 2414
    :cond_2
    if-gez p2, :cond_3

    .line 2415
    const/4 p2, 0x0

    .line 2417
    :cond_3
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2418
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2419
    aget-object v0, p0, p1

    .line 2420
    .local v0, "aux":Ljava/lang/Object;
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 2421
    aput-object v0, p0, p2

    .line 2418
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static swap([SII)V
    .locals 1
    .param p0, "array"    # [S
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 1942
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1946
    :cond_0
    :goto_0
    return-void

    .line 1945
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    goto :goto_0
.end method

.method public static swap([SIII)V
    .locals 4
    .param p0, "array"    # [S
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2450
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ge p1, v2, :cond_0

    array-length v2, p0

    if-lt p2, v2, :cond_1

    .line 2468
    :cond_0
    return-void

    .line 2453
    :cond_1
    if-gez p1, :cond_2

    .line 2454
    const/4 p1, 0x0

    .line 2456
    :cond_2
    if-gez p2, :cond_3

    .line 2457
    const/4 p2, 0x0

    .line 2459
    :cond_3
    if-eq p1, p2, :cond_0

    .line 2462
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2463
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2464
    aget-short v0, p0, p1

    .line 2465
    .local v0, "aux":S
    aget-short v2, p0, p2

    aput-short v2, p0, p1

    .line 2466
    aput-short v0, p0, p2

    .line 2463
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static swap([ZII)V
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .prologue
    .line 2082
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2086
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    goto :goto_0
.end method

.method public static swap([ZIII)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .prologue
    .line 2113
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ge p1, v2, :cond_0

    array-length v2, p0

    if-lt p2, v2, :cond_1

    .line 2128
    :cond_0
    return-void

    .line 2116
    :cond_1
    if-gez p1, :cond_2

    .line 2117
    const/4 p1, 0x0

    .line 2119
    :cond_2
    if-gez p2, :cond_3

    .line 2120
    const/4 p2, 0x0

    .line 2122
    :cond_3
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v3, p0

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2124
    aget-boolean v0, p0, p1

    .line 2125
    .local v0, "aux":Z
    aget-boolean v2, p0, p2

    aput-boolean v2, p0, p1

    .line 2126
    aput-boolean v0, p0, p2

    .line 2123
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 10
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    if-nez p0, :cond_1

    .line 241
    const/4 v3, 0x0

    .line 263
    :cond_0
    return-object v3

    .line 243
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v5, p0

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 244
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 245
    aget-object v4, p0, v2

    .line 246
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Map$Entry;

    if-eqz v5, :cond_2

    move-object v1, v4

    .line 247
    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_2
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 250
    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    .line 251
    .local v0, "entry":[Ljava/lang/Object;
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    .line 252
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', has a length less than 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 258
    .end local v0    # "entry":[Ljava/lang/Object;
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array element "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3
    .param p0, "array"    # [Z

    .prologue
    .line 4825
    if-nez p0, :cond_1

    .line 4826
    const/4 v1, 0x0

    .line 4834
    :cond_0
    :goto_0
    return-object v1

    .line 4827
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4828
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_0

    .line 4830
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Boolean;

    .line 4831
    .local v1, "result":[Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4832
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v2, v1, v0

    .line 4831
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4832
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 4588
    if-nez p0, :cond_1

    .line 4589
    const/4 v1, 0x0

    .line 4597
    :cond_0
    :goto_0
    return-object v1

    .line 4590
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4591
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_0

    .line 4593
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Byte;

    .line 4594
    .local v1, "result":[Ljava/lang/Byte;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4595
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4594
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 3
    .param p0, "array"    # [C

    .prologue
    .line 4316
    if-nez p0, :cond_1

    .line 4317
    const/4 v1, 0x0

    .line 4325
    :cond_0
    :goto_0
    return-object v1

    .line 4318
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4319
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_0

    .line 4321
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Character;

    .line 4322
    .local v1, "result":[Ljava/lang/Character;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4323
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 4
    .param p0, "array"    # [D

    .prologue
    .line 4656
    if-nez p0, :cond_1

    .line 4657
    const/4 v1, 0x0

    .line 4665
    :cond_0
    :goto_0
    return-object v1

    .line 4658
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4659
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_0

    .line 4661
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Double;

    .line 4662
    .local v1, "result":[Ljava/lang/Double;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4663
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4662
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 4724
    if-nez p0, :cond_1

    .line 4725
    const/4 v1, 0x0

    .line 4733
    :cond_0
    :goto_0
    return-object v1

    .line 4726
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4727
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_0

    .line 4729
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Float;

    .line 4730
    .local v1, "result":[Ljava/lang/Float;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4731
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4730
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 4452
    if-nez p0, :cond_1

    .line 4453
    const/4 v1, 0x0

    .line 4461
    :cond_0
    :goto_0
    return-object v1

    .line 4454
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4455
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_0

    .line 4457
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Integer;

    .line 4458
    .local v1, "result":[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4459
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4458
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 4
    .param p0, "array"    # [J

    .prologue
    .line 4384
    if-nez p0, :cond_1

    .line 4385
    const/4 v1, 0x0

    .line 4393
    :cond_0
    :goto_0
    return-object v1

    .line 4386
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4387
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_0

    .line 4389
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 4390
    .local v1, "result":[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4391
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 3
    .param p0, "array"    # [S

    .prologue
    .line 4520
    if-nez p0, :cond_1

    .line 4521
    const/4 v1, 0x0

    .line 4529
    :cond_0
    :goto_0
    return-object v1

    .line 4522
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4523
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_0

    .line 4525
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Short;

    .line 4526
    .local v1, "result":[Ljava/lang/Short;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4527
    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4526
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 4746
    if-nez p0, :cond_1

    .line 4747
    const/4 p0, 0x0

    .line 4766
    .end local p0    # "array":Ljava/lang/Object;
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p0

    .line 4749
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4750
    .restart local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 4751
    .restart local v1    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4752
    check-cast p0, [Ljava/lang/Integer;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Integer;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object p0

    goto :goto_0

    .line 4754
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_2
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4755
    check-cast p0, [Ljava/lang/Long;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Long;)[J

    move-result-object p0

    goto :goto_0

    .line 4757
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_3
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4758
    check-cast p0, [Ljava/lang/Short;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Short;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Short;)[S

    move-result-object p0

    goto :goto_0

    .line 4760
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_4
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4761
    check-cast p0, [Ljava/lang/Double;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Double;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Double;)[D

    move-result-object p0

    goto :goto_0

    .line 4763
    .restart local p0    # "array":Ljava/lang/Object;
    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4764
    check-cast p0, [Ljava/lang/Float;

    .end local p0    # "array":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Float;)[F

    move-result-object p0

    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .param p0, "array"    # [Ljava/lang/Byte;

    .prologue
    .line 4544
    if-nez p0, :cond_1

    .line 4545
    const/4 v1, 0x0

    .line 4553
    :cond_0
    :goto_0
    return-object v1

    .line 4546
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4547
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 4549
    :cond_2
    array-length v2, p0

    new-array v1, v2, [B

    .line 4550
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4551
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 4550
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 4
    .param p0, "array"    # [Ljava/lang/Byte;
    .param p1, "valueForNull"    # B

    .prologue
    .line 4566
    if-nez p0, :cond_1

    .line 4567
    const/4 v2, 0x0

    .line 4576
    :cond_0
    :goto_0
    return-object v2

    .line 4568
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 4569
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 4571
    :cond_2
    array-length v3, p0

    new-array v2, v3, [B

    .line 4572
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4573
    aget-object v0, p0, v1

    .line 4574
    .local v0, "b":Ljava/lang/Byte;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-byte v3, v2, v1

    .line 4572
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4574
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .param p0, "array"    # [Ljava/lang/Character;

    .prologue
    .line 4272
    if-nez p0, :cond_1

    .line 4273
    const/4 v1, 0x0

    .line 4281
    :cond_0
    :goto_0
    return-object v1

    .line 4274
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4275
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 4277
    :cond_2
    array-length v2, p0

    new-array v1, v2, [C

    .line 4278
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4279
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 4278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 4
    .param p0, "array"    # [Ljava/lang/Character;
    .param p1, "valueForNull"    # C

    .prologue
    .line 4294
    if-nez p0, :cond_1

    .line 4295
    const/4 v2, 0x0

    .line 4304
    :cond_0
    :goto_0
    return-object v2

    .line 4296
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 4297
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 4299
    :cond_2
    array-length v3, p0

    new-array v2, v3, [C

    .line 4300
    .local v2, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4301
    aget-object v0, p0, v1

    .line 4302
    .local v0, "b":Ljava/lang/Character;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-char v3, v2, v1

    .line 4300
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4302
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .param p0, "array"    # [Ljava/lang/Double;

    .prologue
    .line 4612
    if-nez p0, :cond_1

    .line 4613
    const/4 v1, 0x0

    .line 4621
    :cond_0
    :goto_0
    return-object v1

    .line 4614
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4615
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 4617
    :cond_2
    array-length v2, p0

    new-array v1, v2, [D

    .line 4618
    .local v1, "result":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4619
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 4618
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 7
    .param p0, "array"    # [Ljava/lang/Double;
    .param p1, "valueForNull"    # D

    .prologue
    .line 4634
    if-nez p0, :cond_1

    .line 4635
    const/4 v2, 0x0

    .line 4644
    :cond_0
    :goto_0
    return-object v2

    .line 4636
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 4637
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 4639
    :cond_2
    array-length v3, p0

    new-array v2, v3, [D

    .line 4640
    .local v2, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4641
    aget-object v0, p0, v1

    .line 4642
    .local v0, "b":Ljava/lang/Double;
    if-nez v0, :cond_3

    move-wide v4, p1

    :goto_2
    aput-wide v4, v2, v1

    .line 4640
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4642
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .param p0, "array"    # [Ljava/lang/Float;

    .prologue
    .line 4680
    if-nez p0, :cond_1

    .line 4681
    const/4 v1, 0x0

    .line 4689
    :cond_0
    :goto_0
    return-object v1

    .line 4682
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4683
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 4685
    :cond_2
    array-length v2, p0

    new-array v1, v2, [F

    .line 4686
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4687
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 4686
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 4
    .param p0, "array"    # [Ljava/lang/Float;
    .param p1, "valueForNull"    # F

    .prologue
    .line 4702
    if-nez p0, :cond_1

    .line 4703
    const/4 v2, 0x0

    .line 4712
    :cond_0
    :goto_0
    return-object v2

    .line 4704
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 4705
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 4707
    :cond_2
    array-length v3, p0

    new-array v2, v3, [F

    .line 4708
    .local v2, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4709
    aget-object v0, p0, v1

    .line 4710
    .local v0, "b":Ljava/lang/Float;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    .line 4708
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4710
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Integer;

    .prologue
    .line 4408
    if-nez p0, :cond_1

    .line 4409
    const/4 v1, 0x0

    .line 4417
    :cond_0
    :goto_0
    return-object v1

    .line 4410
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4411
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 4413
    :cond_2
    array-length v2, p0

    new-array v1, v2, [I

    .line 4414
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4415
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 4414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 4
    .param p0, "array"    # [Ljava/lang/Integer;
    .param p1, "valueForNull"    # I

    .prologue
    .line 4430
    if-nez p0, :cond_1

    .line 4431
    const/4 v2, 0x0

    .line 4440
    :cond_0
    :goto_0
    return-object v2

    .line 4432
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 4433
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 4435
    :cond_2
    array-length v3, p0

    new-array v2, v3, [I

    .line 4436
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4437
    aget-object v0, p0, v1

    .line 4438
    .local v0, "b":Ljava/lang/Integer;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput v3, v2, v1

    .line 4436
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4438
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "array"    # [Ljava/lang/Long;

    .prologue
    .line 4340
    if-nez p0, :cond_1

    .line 4341
    const/4 v1, 0x0

    .line 4349
    :cond_0
    :goto_0
    return-object v1

    .line 4342
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4343
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 4345
    :cond_2
    array-length v2, p0

    new-array v1, v2, [J

    .line 4346
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4347
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 4346
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 7
    .param p0, "array"    # [Ljava/lang/Long;
    .param p1, "valueForNull"    # J

    .prologue
    .line 4362
    if-nez p0, :cond_1

    .line 4363
    const/4 v2, 0x0

    .line 4372
    :cond_0
    :goto_0
    return-object v2

    .line 4364
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 4365
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 4367
    :cond_2
    array-length v3, p0

    new-array v2, v3, [J

    .line 4368
    .local v2, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4369
    aget-object v0, p0, v1

    .line 4370
    .local v0, "b":Ljava/lang/Long;
    if-nez v0, :cond_3

    move-wide v4, p1

    :goto_2
    aput-wide v4, v2, v1

    .line 4368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4370
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .param p0, "array"    # [Ljava/lang/Short;

    .prologue
    .line 4476
    if-nez p0, :cond_1

    .line 4477
    const/4 v1, 0x0

    .line 4485
    :cond_0
    :goto_0
    return-object v1

    .line 4478
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4479
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 4481
    :cond_2
    array-length v2, p0

    new-array v1, v2, [S

    .line 4482
    .local v1, "result":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4483
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 4482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 4
    .param p0, "array"    # [Ljava/lang/Short;
    .param p1, "valueForNull"    # S

    .prologue
    .line 4498
    if-nez p0, :cond_1

    .line 4499
    const/4 v2, 0x0

    .line 4508
    :cond_0
    :goto_0
    return-object v2

    .line 4500
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 4501
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 4503
    :cond_2
    array-length v3, p0

    new-array v2, v3, [S

    .line 4504
    .local v2, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4505
    aget-object v0, p0, v1

    .line 4506
    .local v0, "b":Ljava/lang/Short;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-short v3, v2, v1

    .line 4504
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4506
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v3

    goto :goto_2
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3
    .param p0, "array"    # [Ljava/lang/Boolean;

    .prologue
    .line 4781
    if-nez p0, :cond_1

    .line 4782
    const/4 v1, 0x0

    .line 4790
    :cond_0
    :goto_0
    return-object v1

    .line 4783
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 4784
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 4786
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Z

    .line 4787
    .local v1, "result":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 4788
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 4787
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 4
    .param p0, "array"    # [Ljava/lang/Boolean;
    .param p1, "valueForNull"    # Z

    .prologue
    .line 4803
    if-nez p0, :cond_1

    .line 4804
    const/4 v2, 0x0

    .line 4813
    :cond_0
    :goto_0
    return-object v2

    .line 4805
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 4806
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 4808
    :cond_2
    array-length v3, p0

    new-array v2, v3, [Z

    .line 4809
    .local v2, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 4810
    aget-object v0, p0, v1

    .line 4811
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_3

    move v3, p1

    :goto_2
    aput-boolean v3, v2, v1

    .line 4809
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4811
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    .line 161
    const-string/jumbo v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "stringIfNull"    # Ljava/lang/String;

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 180
    .end local p1    # "stringIfNull":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "stringIfNull":Ljava/lang/String;
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 8019
    if-nez p0, :cond_1

    .line 8020
    const/4 v1, 0x0

    .line 8030
    :cond_0
    :goto_0
    return-object v1

    .line 8021
    :cond_1
    array-length v2, p0

    if-nez v2, :cond_2

    .line 8022
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 8025
    :cond_2
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 8026
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 8027
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 8026
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static toStringArray([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "valueForNullElements"    # Ljava/lang/String;

    .prologue
    .line 8045
    if-nez p0, :cond_1

    .line 8046
    const/4 v2, 0x0

    .line 8057
    :cond_0
    :goto_0
    return-object v2

    .line 8047
    :cond_1
    array-length v3, p0

    if-nez v3, :cond_2

    .line 8048
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 8051
    :cond_2
    array-length v3, p0

    new-array v2, v3, [Ljava/lang/String;

    .line 8052
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 8053
    aget-object v1, p0, v0

    .line 8054
    .local v1, "object":Ljava/lang/Object;
    if-nez v1, :cond_3

    move-object v3, p1

    :goto_2
    aput-object v3, v2, v0

    .line 8052
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8054
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
