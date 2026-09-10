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

    .line 66
    new-instance v0, Lorg/apache/commons/lang3/ObjectUtils$Null;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ObjectUtils$Null;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ObjectUtils;->NULL:Lorg/apache/commons/lang3/ObjectUtils$Null;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static CONST(B)B
    .locals 0
    .param p0, "v"    # B

    .line 847
    return p0
.end method

.method public static CONST(C)C
    .locals 0
    .param p0, "v"    # C

    .line 895
    return p0
.end method

.method public static CONST(D)D
    .locals 0
    .param p0, "v"    # D

    .line 1028
    return-wide p0
.end method

.method public static CONST(F)F
    .locals 0
    .param p0, "v"    # F

    .line 1007
    return p0
.end method

.method public static CONST(I)I
    .locals 0
    .param p0, "v"    # I

    .line 965
    return p0
.end method

.method public static CONST(J)J
    .locals 0
    .param p0, "v"    # J

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

    .line 1050
    .local p0, "v":Ljava/lang/Object;, "TT;"
    return-object p0
.end method

.method public static CONST(S)S
    .locals 0
    .param p0, "v"    # S

    .line 916
    return p0
.end method

.method public static CONST(Z)Z
    .locals 0
    .param p0, "v"    # Z

    .line 826
    return p0
.end method

.method public static CONST_BYTE(I)B
    .locals 3
    .param p0, "v"    # I

    .line 871
    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 874
    int-to-byte v0, p0

    return v0

    .line 872
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied value must be a valid byte literal between -128 and 127: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static CONST_SHORT(I)S
    .locals 3
    .param p0, "v"    # I

    .line 940
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_0

    .line 943
    int-to-short v0, p0

    return v0

    .line 941
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied value must be a valid byte literal between -32768 and 32767: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs allNotNull([Ljava/lang/Object;)Z
    .locals 4
    .param p0, "values"    # [Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 190
    return v0

    .line 193
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 194
    .local v3, "val":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 195
    return v0

    .line 193
    .end local v3    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs anyNotNull([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;

    .line 160
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 688
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_3

    .line 690
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 692
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 694
    .local v1, "length":I
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 695
    .local v2, "result":Ljava/lang/Object;
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "length":I
    .local v3, "length":I
    if-lez v1, :cond_0

    .line 696
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v1, v3

    goto :goto_0

    .line 698
    .end local v3    # "length":I
    :cond_0
    goto :goto_1

    .line 699
    .end local v2    # "result":Ljava/lang/Object;
    :cond_1
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    .line 701
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "result":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 703
    .end local v2    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clone"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 704
    .local v0, "clone":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 715
    .end local v0    # "clone":Ljava/lang/reflect/Method;
    .restart local v2    # "result":Ljava/lang/Object;
    nop

    .line 718
    :goto_2
    move-object v0, v2

    .line 719
    .local v0, "checked":Ljava/lang/Object;, "TT;"
    return-object v0

    .line 712
    .end local v0    # "checked":Ljava/lang/Object;, "TT;"
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception cloning Cloneable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 709
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot clone Cloneable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 705
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/apache/commons/lang3/exception/CloneFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cloneable type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no clone method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 722
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 742
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 743
    .local v0, "clone":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)I"
        }
    .end annotation

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
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    .line 583
    .local p0, "c1":Ljava/lang/Comparable;, "TT;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    if-ne p0, p1, :cond_0

    .line 584
    const/4 v0, 0x0

    return v0

    .line 585
    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p0, :cond_2

    .line 586
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 587
    :cond_2
    if-nez p1, :cond_4

    .line 588
    if-eqz p2, :cond_3

    const/4 v0, -0x1

    :cond_3
    return v0

    .line 590
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 99
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    if-ne p0, p1, :cond_0

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 231
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
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

    .line 126
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    .line 127
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 128
    .local v2, "val":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 129
    return-object v2

    .line 127
    .end local v2    # "val":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static varargs hashCodeMulti([Ljava/lang/Object;)I
    .locals 6
    .param p0, "objects"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    const/4 v0, 0x1

    .line 305
    .local v0, "hash":I
    if-eqz p0, :cond_0

    .line 306
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 307
    .local v3, "object":Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v4

    .line 308
    .local v4, "tmpHash":I
    mul-int/lit8 v5, v0, 0x1f

    add-int v0, v5, v4

    .line 306
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "tmpHash":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return v0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 333
    if-nez p0, :cond_0

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "hexString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
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

    .line 364
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot get the toString of a null object"

    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    .line 366
    const/16 v1, 0x40

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

    .line 414
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot get the toString of a null object"

    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "hexString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    return-void
.end method

.method public static identityToString(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "object"    # Ljava/lang/Object;

    .line 439
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot get the toString of a null object"

    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "hexString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 443
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    return-void
.end method

.method public static identityToString(Lorg/apache/commons/lang3/text/StrBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p0, "builder"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot get the toString of a null object"

    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "hexString":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 393
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v2

    .line 394
    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v2

    .line 395
    invoke-virtual {v2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 396
    return-void
.end method

.method public static varargs max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 544
    .local p0, "values":[Ljava/lang/Comparable;, "[TT;"
    const/4 v0, 0x0

    .line 545
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_1

    .line 546
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 547
    .local v4, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {v4, v0, v2}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v5

    if-lez v5, :cond_0

    .line 548
    move-object v0, v4

    .line 546
    .end local v4    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_1
    return-object v0
.end method

.method public static varargs median([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 605
    .local p0, "items":[Ljava/lang/Comparable;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 606
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 607
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 608
    .local v0, "sort":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TT;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Comparable;

    .line 611
    .local v1, "result":Ljava/lang/Comparable;, "TT;"
    return-object v1
.end method

.method public static varargs median(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;[TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 627
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "null/empty items"

    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 628
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 629
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "null comparator"

    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 631
    .local v0, "sort":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TT;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    .line 635
    .local v1, "result":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method public static varargs min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 518
    .local p0, "values":[Ljava/lang/Comparable;, "[TT;"
    const/4 v0, 0x0

    .line 519
    .local v0, "result":Ljava/lang/Comparable;, "TT;"
    if-eqz p0, :cond_1

    .line 520
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 521
    .local v3, "value":Ljava/lang/Comparable;, "TT;"
    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lorg/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v4

    if-gez v4, :cond_0

    .line 522
    move-object v0, v3

    .line 520
    .end local v3    # "value":Ljava/lang/Comparable;, "TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    :cond_1
    return-object v0
.end method

.method public static varargs mode([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 650
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 651
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 652
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 653
    .local v3, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 654
    .local v4, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v4, :cond_0

    .line 655
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 657
    :cond_0
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 652
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    :cond_1
    const/4 v1, 0x0

    .line 661
    .local v1, "result":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 662
    .local v2, "max":I
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 663
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v5

    .line 664
    .local v5, "cmp":I
    if-ne v5, v2, :cond_2

    .line 665
    const/4 v1, 0x0

    goto :goto_3

    .line 666
    :cond_2
    if-le v5, v2, :cond_3

    .line 667
    move v2, v5

    .line 668
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 670
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v5    # "cmp":I
    :cond_3
    :goto_3
    goto :goto_2

    .line 671
    :cond_4
    return-object v1

    .line 673
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    .end local v2    # "max":I
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object1"    # Ljava/lang/Object;
    .param p1, "object2"    # Ljava/lang/Object;

    .line 256
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nullStr"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
