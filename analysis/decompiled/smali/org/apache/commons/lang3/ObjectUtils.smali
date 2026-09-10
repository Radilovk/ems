.class public Lorg/apache/commons/lang3/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/ObjectUtils$Null;
    }
.end annotation


# static fields
.field private static final AT_SIGN:C = '@'

.field public static final NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lorg/apache/commons/lang3/ObjectUtils$Null;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ObjectUtils$Null;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ObjectUtils;->NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static CONST(B)B
    .locals 0
    .param p0, "v"    # B

    .prologue
    .line 847
    return p0
.end method

.method public static CONST(C)C
    .locals 0
    .param p0, "v"    # C

    .prologue
    .line 895
    return p0
.end method

.method public static CONST(D)D
    .locals 0
    .param p0, "v"    # D

    .prologue
    .line 1028
    return-wide p0
.end method

.method public static CONST(F)F
    .locals 0
    .param p0, "v"    # F

    .prologue
    .line 1007
    return p0
.end method

.method public static CONST(I)I
    .locals 0
    .param p0, "v"    # I

    .prologue
    .line 965
    return p0
.end method

.method public static CONST(J)J
    .locals 0
    .param p0, "v"    # J

    .prologue
    .line 986
    return-wide p0
.end method

.method public static CONST(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1050
    .local p0, "v":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public static CONST(S)S
    .locals 0
    .param p0, "v"    # S

    .prologue
    .line 916
    return p0
.end method

.method public static CONST(Z)Z
    .locals 0
    .param p0, "v"    # Z

    .prologue
    .line 826
    return p0
.end method

.method public static CONST_BYTE(I)B
    .locals 3
    .param p0, "v"    # I

    .prologue
    .line 871
    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-le p0, v0, :cond_1

    .line 872
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied value must be a valid byte literal between -128 and 127: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_1
    int-to-byte v0, p0

    return v0
.end method

.method public static CONST_SHORT(I)S
    .locals 3
    .param p0, "v"    # I

    .prologue
    .line 940
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_1

    .line 941
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied value must be a valid byte literal between -32768 and 32767: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_1
    int-to-short v0, p0

    return v0
.end method

.method public static varargs allNotNull([Ljava/lang/Object;)Z
    .locals 4
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 189
    if-nez p0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    .line 194
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v0    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static varargs anyNotNull([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    .line 160
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    instance-of v7, p0, Ljava/lang/Cloneable;

    if-eqz v7, :cond_3

    .line 690
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 691
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 692
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 693
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 694
    .local v4, "length":I
    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .local v6, "result":Ljava/lang/Object;
    move v5, v4

    .line 695
    .end local v4    # "length":I
    .local v5, "length":I
    :goto_0
    add-int/lit8 v4, v5, -0x1

    .end local v5    # "length":I
    .restart local v4    # "length":I
    if-lez v5, :cond_1

    .line 696
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v4, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v5, v4

    .end local v4    # "length":I
    .restart local v5    # "length":I
    goto :goto_0

    .line 699
    .end local v5    # "length":I
    .end local v6    # "result":Ljava/lang/Object;
    :cond_0
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    .line 718
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "result":Ljava/lang/Object;
    :cond_1
    :goto_1
    move-object v0, v6

    .line 722
    .local v0, "checked":Ljava/lang/Object;, "TT;"
    :goto_2
    return-object v0

    .line 703
    .end local v0    # "checked":Ljava/lang/Object;, "TT;"
    .end local v6    # "result":Ljava/lang/Object;
    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "clone"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 704
    .local v1, "clone":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 705
    .end local v1    # "clone":Ljava/lang/reflect/Method;
    .end local v6    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 706
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cloneable type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 707
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has no clone method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 709
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 710
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot clone Cloneable type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 711
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 712
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 713
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception cloning Cloneable type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 714
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 722
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 743
    .local v0, "clone":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .end local p0    # "obj":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "c1":Ljava/lang/Comparable;, "TT;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .locals 2
    .param p2, "nullGreater"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    .prologue
    .local p0, "c1":Ljava/lang/Comparable;, "TT;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 583
    if-ne p0, p1, :cond_1

    .line 584
    const/4 v0, 0x0

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 585
    :cond_1
    if-nez p0, :cond_2

    .line 586
    if-nez p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 587
    :cond_2
    if-nez p1, :cond_4

    .line 588
    if-eqz p2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 590
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .end local p0    # "object":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "object":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    if-ne p0, p1, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    .line 230
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 126
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    .line 127
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 128
    .local v0, "val":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 133
    .end local v0    # "val":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v0

    .line 127
    .restart local v0    # "val":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "val":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 277
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static varargs hashCodeMulti([Ljava/lang/Object;)I
    .locals 6
    .param p0, "objects"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x1

    .line 305
    .local v0, "hash":I
    if-eqz p0, :cond_0

    .line 306
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p0, v3

    .line 307
    .local v1, "object":Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v2

    .line 308
    .local v2, "tmpHash":I
    mul-int/lit8 v5, v0, 0x1f

    add-int v0, v5, v2

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "tmpHash":I
    :cond_0
    return v0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 333
    if-nez p0, :cond_0

    .line 334
    const/4 v3, 0x0

    .line 344
    :goto_0
    return-object v3

    .line 336
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "name":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "hexString":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x40

    .line 341
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 342
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static identityToString(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 2
    .param p0, "appendable"    # Ljava/lang/Appendable;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    const-string v0, "Cannot get the toString of a null object"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v1, 0x40

    .line 366
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v0

    .line 367
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 368
    return-void
.end method

.method public static identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 4
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 414
    const-string v2, "Cannot get the toString of a null object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "name":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 418
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x40

    .line 419
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 420
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    return-void
.end method

.method public static identityToString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 439
    const-string v2, "Cannot get the toString of a null object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "name":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 443
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x40

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 445
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    return-void
.end method

.method public static identityToString(Lorg/apache/commons/lang3/text/StrBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p0, "builder"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    const-string v2, "Cannot get the toString of a null object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "name":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 393
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v2

    const/16 v3, 0x40

    .line 394
    invoke-virtual {v2, v3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v2

    .line 395
    invoke-virtual {v2, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 396
    return-void
.end method

.method public static varargs max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .local p0, "values":[Ljava/lang/Comparable;, "[TT;"
    const/4 v3, 0x0

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_1

    .line 546
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p0, v2

    .line 547
    .local v1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {v1, v0, v3}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v5

    if-lez v5, :cond_0

    .line 548
    move-object v0, v1

    .line 546
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .end local v1    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static varargs median([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 605
    .local p0, "items":[Ljava/lang/Comparable;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 606
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 607
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 608
    .local v1, "sort":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TT;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/Comparable;

    .line 611
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    return-object v0
.end method

.method public static varargs median(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;[TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 627
    const-string v2, "null/empty items"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 628
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 629
    const-string v2, "null comparator"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 631
    .local v1, "sort":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TT;>;"
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {v1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v2, v3

    .line 635
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static varargs min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 518
    .local p0, "values":[Ljava/lang/Comparable;, "[TT;"
    const/4 v0, 0x0

    .line 519
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_1

    .line 520
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 521
    .local v1, "value":Ljava/lang/Comparable;, "TT;"
    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v4

    if-gez v4, :cond_0

    .line 522
    move-object v0, v1

    .line 520
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v1    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static varargs mode([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 650
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 651
    new-instance v4, Ljava/util/HashMap;

    array-length v7, p0

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 652
    .local v4, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v8, p0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v6, p0, v7

    .line 653
    .local v6, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 654
    .local v1, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v1, :cond_0

    .line 655
    new-instance v9, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_1

    .line 660
    .end local v1    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v5, 0x0

    .line 661
    .local v5, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 662
    .local v3, "max":I
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 663
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v7}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    .line 664
    .local v0, "cmp":I
    if-ne v0, v3, :cond_3

    .line 665
    const/4 v5, 0x0

    .restart local v5    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 666
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_3
    if-le v0, v3, :cond_2

    .line 667
    move v3, v0

    .line 668
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 673
    .end local v0    # "cmp":I
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v3    # "max":I
    .end local v4    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_4
    const/4 v5, 0x0

    :cond_5
    return-object v5
.end method

.method public static notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .prologue
    .line 256
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nullStr"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    if-nez p0, :cond_0

    .end local p1    # "nullStr":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "nullStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
