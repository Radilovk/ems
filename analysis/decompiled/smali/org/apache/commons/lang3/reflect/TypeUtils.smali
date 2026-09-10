.class public Lorg/apache/commons/lang3/reflect/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;,
        Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    }
.end annotation


# static fields
.field public static final WILDCARD_ALL:Ljava/lang/reflect/WildcardType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 287
    invoke-static {}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withUpperBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/reflect/TypeUtils;->WILDCARD_ALL:Ljava/lang/reflect/WildcardType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method

.method static synthetic access$100(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/GenericArrayType;
    .param p1, "x1"    # Ljava/lang/reflect/Type;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/ParameterizedType;
    .param p1, "x1"    # Ljava/lang/reflect/Type;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/WildcardType;
    .param p1, "x1"    # Ljava/lang/reflect/Type;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method private static varargs appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "sep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "[TT;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 1880
    .local p2, "types":[Ljava/lang/Object;, "[TT;"
    invoke-static {p2}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1881
    array-length v1, p2

    if-lez v1, :cond_0

    .line 1882
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1884
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1887
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method private static appendRecursiveTypes(Ljava/lang/StringBuilder;[I[Ljava/lang/reflect/Type;)V
    .locals 9
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "recursiveTypeIndexes"    # [I
    .param p2, "argumentTypes"    # [Ljava/lang/reflect/Type;

    .prologue
    const/16 v8, 0x3e

    const/16 v7, 0x3c

    .line 1815
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1816
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1815
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1819
    :cond_0
    invoke-static {p2, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    .line 1821
    .local v0, "argumentsFiltered":[Ljava/lang/reflect/Type;
    array-length v2, v0

    if-lez v2, :cond_1

    .line 1822
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v2, v3, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1824
    :cond_1
    return-void
.end method

.method private static classToString(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1745
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1761
    :goto_0
    return-object v1

    .line 1749
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1751
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1752
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->classToString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 1757
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1758
    const-string v1, ", "

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1759
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1761
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1754
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static containsTypeVariables(Ljava/lang/reflect/Type;)Z
    .locals 8
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1431
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_1

    .line 1450
    .local v1, "wild":Ljava/lang/reflect/WildcardType;
    :cond_0
    :goto_0
    return v2

    .line 1434
    .end local v1    # "wild":Ljava/lang/reflect/WildcardType;
    :cond_1
    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 1435
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    array-length v4, v4

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 1437
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_4

    .line 1438
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    .local v0, "arg":Ljava/lang/reflect/Type;
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    .line 1439
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1438
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1443
    goto :goto_0

    .line 1445
    .end local v0    # "arg":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_7

    move-object v1, p0

    .line 1446
    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 1447
    .restart local v1    # "wild":Ljava/lang/reflect/WildcardType;
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1448
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v3, v2

    :cond_6
    move v2, v3

    .line 1447
    goto :goto_0

    .end local v1    # "wild":Ljava/lang/reflect/WildcardType;
    :cond_7
    move v2, v3

    .line 1450
    goto :goto_0
.end method

.method private static containsVariableTypeSameParametrizedTypeBound(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/ParameterizedType;)Z
    .locals 1
    .param p1, "p"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1840
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .locals 8
    .param p1, "superType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 962
    const-string v5, "cls is null"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v5, "superType is null"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p1, v5, v6}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v3

    .line 968
    .local v3, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 992
    :goto_0
    return-object v4

    .line 972
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 973
    invoke-static {p1, v3, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    .line 977
    :cond_1
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 980
    .local v2, "midType":Ljava/lang/reflect/Type;
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 981
    check-cast v2, Ljava/lang/Class;

    .end local v2    # "midType":Ljava/lang/reflect/Type;
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    .restart local v2    # "midType":Ljava/lang/reflect/Type;
    :cond_2
    move-object v1, v2

    .line 984
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 985
    .local v1, "midParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 988
    .local v0, "midClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v4

    .line 990
    .local v4, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {p0, v1, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/reflect/GenericArrayType;
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1614
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    .line 1615
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "t":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1614
    :goto_0
    return v0

    .line 1615
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z
    .locals 3
    .param p0, "p"    # Ljava/lang/reflect/ParameterizedType;
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1597
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1598
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1599
    .local v0, "other":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1600
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v1

    .line 1603
    .end local v0    # "other":Ljava/lang/reflect/ParameterizedType;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "t1"    # Ljava/lang/reflect/Type;
    .param p1, "t2"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1574
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    const/4 v0, 0x1

    .line 1586
    .end local p0    # "t1":Ljava/lang/reflect/Type;
    :goto_0
    return v0

    .line 1577
    .restart local p0    # "t1":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1578
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "t1":Ljava/lang/reflect/Type;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 1580
    .restart local p0    # "t1":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 1581
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "t1":Ljava/lang/reflect/Type;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 1583
    .restart local p0    # "t1":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 1584
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "t1":Ljava/lang/reflect/Type;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 1586
    .restart local p0    # "t1":Ljava/lang/reflect/Type;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static equals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p0, "w"    # Ljava/lang/reflect/WildcardType;
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x0

    .line 1626
    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1627
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 1628
    .local v0, "other":Ljava/lang/reflect/WildcardType;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1629
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1631
    .end local v0    # "other":Ljava/lang/reflect/WildcardType;
    :cond_0
    return v1
.end method

.method private static equals([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p0, "t1"    # [Ljava/lang/reflect/Type;
    .param p1, "t2"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x0

    .line 1642
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_0

    .line 1643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1644
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1650
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 1643
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1648
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p0, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .local p1, "variables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v6, 0x0

    .line 1535
    array-length v4, p1

    new-array v2, v4, [Ljava/lang/reflect/Type;

    .line 1536
    .local v2, "result":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 1537
    .local v0, "index":I
    array-length v7, p1

    move v5, v6

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, p1, v5

    .line 1538
    .local v3, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "missing argument mapping for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v4, v8, v9}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1539
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    aput-object v4, v2, v1

    .line 1537
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1541
    .end local v3    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    return-object v2
.end method

.method private static findRecursiveTypes(Ljava/lang/reflect/ParameterizedType;)[I
    .locals 5
    .param p0, "p"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 1827
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    .line 1828
    .local v0, "filteredArgumentTypes":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    new-array v2, v3, [I

    .line 1829
    .local v2, "indexesToRemove":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1830
    aget-object v3, v0, v1

    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    .line 1831
    aget-object v3, v0, v1

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-static {v3, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsVariableTypeSameParametrizedTypeBound(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/ParameterizedType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1832
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add([II)[I

    move-result-object v2

    .line 1829
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1836
    :cond_1
    return-object v2
.end method

.method public static genericArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 3
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1562
    new-instance v1, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;

    const-string v0, "componentType is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v1
.end method

.method private static genericArrayTypeToString(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/String;
    .locals 4
    .param p0, "g"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 1868
    const-string v0, "%s[]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x0

    .line 1348
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 1349
    check-cast v0, Ljava/lang/Class;

    .line 1350
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1355
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object v1

    .line 1352
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_0

    .line 1353
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0
.end method

.method private static getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1054
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1056
    .local v1, "interfaceTypes":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 1059
    .local v0, "genericInterface":Ljava/lang/reflect/Type;
    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v3, v1, v5

    .line 1060
    .local v3, "midType":Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 1062
    .local v2, "midClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 1063
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    .line 1073
    :goto_1
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1074
    invoke-static {v0, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1075
    move-object v0, v3

    .line 1059
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 1064
    :cond_1
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 1065
    check-cast v2, Ljava/lang/Class;

    goto :goto_1

    .line 1067
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected generic interface type found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1080
    .end local v2    # "midClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "midType":Ljava/lang/reflect/Type;
    :cond_3
    if-eqz v0, :cond_4

    .line 1087
    .end local v0    # "genericInterface":Ljava/lang/reflect/Type;
    .end local v1    # "interfaceTypes":[Ljava/lang/reflect/Type;
    :goto_2
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_2
.end method

.method public static getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .line 1165
    const-string/jumbo v1, "typeVariable is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1168
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0
.end method

.method public static getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "wildcardType"    # Ljava/lang/reflect/WildcardType;

    .prologue
    const/4 v3, 0x0

    .line 1198
    const-string/jumbo v1, "wildcardType is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1201
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/reflect/Type;

    .end local v0    # "bounds":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    aput-object v1, v0, v3

    :cond_0
    return-object v0
.end method

.method public static getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "wildcardType"    # Ljava/lang/reflect/WildcardType;

    .prologue
    const/4 v3, 0x0

    .line 1182
    const-string/jumbo v1, "wildcardType is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1185
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .locals 4
    .param p0, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1243
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1250
    .local v0, "rawType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 1251
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait... What!? Type of rawType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1254
    :cond_0
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "rawType":Ljava/lang/reflect/Type;
    return-object v0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "assigningType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1270
    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 1272
    check-cast p0, Ljava/lang/Class;

    .line 1327
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 1275
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    .line 1277
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1280
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_6

    .line 1281
    if-nez p1, :cond_2

    move-object p0, v5

    .line 1282
    goto :goto_0

    :cond_2
    move-object v4, p0

    .line 1286
    check-cast v4, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 1290
    .local v0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v4, v0, Ljava/lang/Class;

    if-nez v4, :cond_3

    move-object p0, v5

    .line 1291
    goto :goto_0

    .line 1296
    :cond_3
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    .line 1301
    .local v3, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    if-nez v3, :cond_4

    move-object p0, v5

    .line 1302
    goto :goto_0

    .line 1306
    :cond_4
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 1308
    .local v2, "typeArgument":Ljava/lang/reflect/Type;
    if-nez v2, :cond_5

    move-object p0, v5

    .line 1309
    goto :goto_0

    .line 1313
    :cond_5
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1316
    .end local v2    # "typeArgument":Ljava/lang/reflect/Type;
    .end local v3    # "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_6
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_7

    .line 1318
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 1319
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1318
    invoke-static {v4, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 1322
    .local v1, "rawComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1326
    .end local v1    # "rawComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_7
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_8

    move-object p0, v5

    .line 1327
    goto :goto_0

    .line 1330
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 903
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "subtypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 904
    const/4 v0, 0x0

    .line 930
    :cond_0
    :goto_0
    return-object v0

    .line 908
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 910
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 913
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 917
    :cond_2
    invoke-static {p0}, Lorg/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 921
    :cond_3
    if-nez p2, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 925
    .local v0, "typeVarAssigns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 921
    .end local v0    # "typeVarAssigns":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public static getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .param p0, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "subtypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    .line 853
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 854
    const/4 v7, 0x0

    .line 889
    :cond_0
    :goto_0
    return-object v7

    .line 857
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 860
    .local v2, "ownerType":Ljava/lang/reflect/Type;
    instance-of v8, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_2

    move-object v3, v2

    .line 862
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 864
    .local v3, "parameterizedOwnerType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v8

    .line 863
    invoke-static {v3, v8, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 872
    .end local v3    # "parameterizedOwnerType":Ljava/lang/reflect/ParameterizedType;
    .local v7, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :goto_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 874
    .local v5, "typeArgs":[Ljava/lang/reflect/Type;
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    .line 877
    .local v6, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v8, v6

    if-ge v1, v8, :cond_5

    .line 878
    aget-object v4, v5, v1

    .line 879
    .local v4, "typeArg":Ljava/lang/reflect/Type;
    aget-object v9, v6, v1

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 880
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    .line 879
    :goto_3
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 867
    .end local v1    # "i":I
    .end local v4    # "typeArg":Ljava/lang/reflect/Type;
    .end local v5    # "typeArgs":[Ljava/lang/reflect/Type;
    .end local v6    # "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v7    # "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_2
    if-nez p2, :cond_3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .restart local v7    # "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :goto_4
    goto :goto_1

    .end local v7    # "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_4

    .restart local v1    # "i":I
    .restart local v4    # "typeArg":Ljava/lang/reflect/Type;
    .restart local v5    # "typeArgs":[Ljava/lang/reflect/Type;
    .restart local v6    # "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v7    # "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_4
    move-object v8, v4

    .line 880
    goto :goto_3

    .line 883
    .end local v4    # "typeArg":Ljava/lang/reflect/Type;
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 889
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {v8, p1, v7}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_0
.end method

.method public static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "subtypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 800
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 801
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 834
    .end local p1    # "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v1

    .line 804
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    .restart local p1    # "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    .line 805
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 808
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_4

    .line 809
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 810
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 809
    .end local p1    # "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-static {v1, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 815
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    .restart local p1    # "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_6

    .line 816
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 818
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 819
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 816
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 826
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_6
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_8

    .line 827
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 829
    .restart local v0    # "bound":Ljava/lang/reflect/Type;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 830
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 827
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 836
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found an unhandled type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isArrayType(Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1339
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 357
    if-nez p0, :cond_2

    .line 359
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 408
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    :goto_0
    return v1

    .line 364
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    if-eqz p1, :cond_1

    .line 369
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 370
    goto :goto_0

    .line 373
    :cond_3
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 375
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0

    .line 378
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    .line 380
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0

    .line 384
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_5
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_7

    .line 387
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 388
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v2

    .line 389
    goto :goto_0

    .line 387
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 398
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_7
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_9

    .line 399
    const-class v3, Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 400
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 401
    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 402
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 401
    invoke-static {v3, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_8
    move v1, v2

    goto :goto_0

    .line 407
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_9
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-nez v2, :cond_1

    .line 411
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found an unhandled type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z
    .locals 9
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toGenericArrayType"    # Ljava/lang/reflect/GenericArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 517
    if-nez p0, :cond_1

    .line 575
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v3

    .line 523
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    if-nez p1, :cond_2

    move v3, v4

    .line 524
    goto :goto_0

    .line 528
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 532
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 534
    .local v2, "toComponentType":Ljava/lang/reflect/Type;
    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_4

    move-object v1, p0

    .line 535
    check-cast v1, Ljava/lang/Class;

    .line 538
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 539
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 542
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    instance-of v5, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_5

    .line 544
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v3

    goto :goto_0

    .line 548
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_5
    instance-of v5, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_7

    .line 550
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v0, v6, v5

    .line 551
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 550
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_6
    move v3, v4

    .line 556
    goto :goto_0

    .line 559
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_7
    instance-of v5, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_9

    .line 562
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_8

    aget-object v0, v6, v5

    .line 563
    .restart local v0    # "bound":Ljava/lang/reflect/Type;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 562
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_8
    move v3, v4

    .line 568
    goto :goto_0

    .line 571
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_9
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_a

    move v3, v4

    .line 575
    goto :goto_0

    .line 578
    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found an unhandled type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 10
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toParameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 425
    if-nez p0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v6

    .line 431
    :cond_1
    if-nez p1, :cond_2

    move v6, v7

    .line 432
    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 441
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    .line 444
    .local v2, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    invoke-static {p0, v2, v8}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 447
    .local v1, "fromTypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    if-nez v1, :cond_3

    move v6, v7

    .line 448
    goto :goto_0

    .line 454
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 459
    invoke-static {p1, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 463
    .local v4, "toTypeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/TypeVariable;

    .line 464
    .local v5, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {v5, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 465
    .local v3, "toTypeArg":Ljava/lang/reflect/Type;
    invoke-static {v5, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 467
    .local v0, "fromTypeArg":Ljava/lang/reflect/Type;
    if-nez v3, :cond_5

    instance-of v9, v0, Ljava/lang/Class;

    if-nez v9, :cond_4

    .line 474
    :cond_5
    if-eqz v0, :cond_4

    .line 475
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    instance-of v9, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_6

    .line 476
    invoke-static {v0, v3, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_6
    move v6, v7

    .line 478
    goto :goto_0
.end method

.method public static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "toType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    .line 342
    :goto_0
    return v0

    .line 329
    .restart local p1    # "toType":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 330
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "toType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 333
    .restart local p1    # "toType":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 334
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .end local p1    # "toType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 337
    .restart local p1    # "toType":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 338
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "toType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 341
    .restart local p1    # "toType":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 342
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "toType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0

    .line 345
    .restart local p1    # "toType":Ljava/lang/reflect/Type;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found an unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "toTypeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 680
    if-nez p0, :cond_0

    move v2, v3

    .line 710
    :goto_0
    return v2

    .line 686
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 687
    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 692
    goto :goto_0

    .line 695
    :cond_2
    instance-of v2, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_4

    move-object v2, p0

    .line 699
    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 701
    .local v1, "bounds":[Ljava/lang/reflect/Type;
    array-length v5, v1

    move v2, v4

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v0, v1, v2

    .line 702
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    .line 703
    goto :goto_0

    .line 701
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 708
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    .end local v1    # "bounds":[Ljava/lang/reflect/Type;
    :cond_4
    instance-of v2, p0, Ljava/lang/Class;

    if-nez v2, :cond_5

    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_5

    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_5

    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_6

    :cond_5
    move v2, v4

    .line 710
    goto :goto_0

    .line 713
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found an unhandled type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z
    .locals 12
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "toWildcardType"    # Ljava/lang/reflect/WildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 593
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    if-nez p0, :cond_0

    .line 594
    const/4 v7, 0x1

    .line 665
    :goto_0
    return v7

    .line 599
    :cond_0
    if-nez p1, :cond_1

    .line 600
    const/4 v7, 0x0

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 605
    const/4 v7, 0x1

    goto :goto_0

    .line 608
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 609
    .local v4, "toUpperBounds":[Ljava/lang/reflect/Type;
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 611
    .local v3, "toLowerBounds":[Ljava/lang/reflect/Type;
    instance-of v7, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_9

    move-object v6, p0

    .line 612
    check-cast v6, Ljava/lang/reflect/WildcardType;

    .line 613
    .local v6, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-static {v6}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 614
    .local v5, "upperBounds":[Ljava/lang/reflect/Type;
    invoke-static {v6}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 616
    .local v1, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v9, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v2, v4, v8

    .line 619
    .local v2, "toBound":Ljava/lang/reflect/Type;
    invoke-static {v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 624
    array-length v10, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_4

    aget-object v0, v5, v7

    .line 625
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0, v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 626
    const/4 v7, 0x0

    goto :goto_0

    .line 624
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 616
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 631
    .end local v2    # "toBound":Ljava/lang/reflect/Type;
    :cond_5
    array-length v9, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    if-ge v8, v9, :cond_8

    aget-object v2, v3, v8

    .line 634
    .restart local v2    # "toBound":Ljava/lang/reflect/Type;
    invoke-static {v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 639
    array-length v10, v1

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_7

    aget-object v0, v1, v7

    .line 640
    .restart local v0    # "bound":Ljava/lang/reflect/Type;
    invoke-static {v2, v0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 641
    const/4 v7, 0x0

    goto :goto_0

    .line 639
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 631
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    :cond_7
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_3

    .line 645
    .end local v2    # "toBound":Ljava/lang/reflect/Type;
    :cond_8
    const/4 v7, 0x1

    goto :goto_0

    .line 648
    .end local v1    # "lowerBounds":[Ljava/lang/reflect/Type;
    .end local v5    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v6    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_9
    array-length v8, v4

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v8, :cond_b

    aget-object v2, v4, v7

    .line 651
    .restart local v2    # "toBound":Ljava/lang/reflect/Type;
    invoke-static {v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {p0, v9, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 653
    const/4 v7, 0x0

    goto :goto_0

    .line 648
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 657
    .end local v2    # "toBound":Ljava/lang/reflect/Type;
    :cond_b
    array-length v8, v3

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v8, :cond_d

    aget-object v2, v3, v7

    .line 660
    .restart local v2    # "toBound":Ljava/lang/reflect/Type;
    invoke-static {v2, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v9, p0, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 662
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 657
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 665
    .end local v2    # "toBound":Ljava/lang/reflect/Type;
    :cond_d
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public static isInstance(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v0, 0x0

    .line 1099
    if-nez p1, :cond_1

    .line 1103
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    if-nez p0, :cond_3

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1104
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    goto :goto_0
.end method

.method private static mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V
    .locals 8
    .param p1, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1006
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1008
    .local v1, "ownerType":Ljava/lang/reflect/Type;
    instance-of v7, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_0

    .line 1010
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .end local v1    # "ownerType":Ljava/lang/reflect/Type;
    invoke-static {p0, v1, p2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    .line 1017
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1021
    .local v3, "typeArgs":[Ljava/lang/reflect/Type;
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    .line 1025
    .local v6, "typeVars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    .line 1024
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1027
    .local v5, "typeVarList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/TypeVariable<Ljava/lang/Class<TT;>;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 1028
    aget-object v4, v6, v0

    .line 1029
    .local v4, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    aget-object v2, v3, v0

    .line 1032
    .local v2, "typeArg":Ljava/lang/reflect/Type;
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1035
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1037
    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .end local v2    # "typeArg":Ljava/lang/reflect/Type;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    .end local v4    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    return-void
.end method

.method public static normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 10
    .param p0, "bounds"    # [Ljava/lang/reflect/Type;

    .prologue
    const/4 v5, 0x0

    .line 1129
    const-string v4, "null value specified for bounds array"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v6}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    array-length v4, p0

    const/4 v6, 0x2

    if-ge v4, v6, :cond_0

    .line 1152
    .end local p0    # "bounds":[Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 1135
    .restart local p0    # "bounds":[Ljava/lang/reflect/Type;
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    array-length v4, p0

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1137
    .local v3, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Type;>;"
    array-length v7, p0

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v1, p0, v6

    .line 1138
    .local v1, "type1":Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 1140
    .local v0, "subtypeFound":Z
    array-length v8, p0

    move v4, v5

    :goto_2
    if-ge v4, v8, :cond_1

    aget-object v2, p0, v4

    .line 1141
    .local v2, "type2":Ljava/lang/reflect/Type;
    if-eq v1, v2, :cond_3

    const/4 v9, 0x0

    invoke-static {v2, v1, v9}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1142
    const/4 v0, 0x1

    .line 1147
    .end local v2    # "type2":Ljava/lang/reflect/Type;
    :cond_1
    if-nez v0, :cond_2

    .line 1148
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    .line 1140
    .restart local v2    # "type2":Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1152
    .end local v0    # "subtypeFound":Z
    .end local v1    # "type1":Ljava/lang/reflect/Type;
    .end local v2    # "type2":Ljava/lang/reflect/Type;
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Type;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Type;

    move-object p0, v4

    goto :goto_0
.end method

.method public static final parameterize(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "typeArgMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v2, 0x0

    .line 1475
    const-string v0, "raw class is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    const-string/jumbo v0, "typeArgMappings is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parameterize(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1
    .param p1, "typeArguments"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 1462
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .locals 3
    .param p0, "owner"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "typeArgMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v2, 0x0

    .line 1523
    const-string v0, "raw class is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    const-string/jumbo v0, "typeArgMappings is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->extractTypeArgumentsFrom(Ljava/util/Map;[Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 7
    .param p0, "owner"    # Ljava/lang/reflect/Type;
    .param p2, "typeArguments"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1492
    const-string v1, "raw class is null"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v4}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1495
    if-nez p0, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "no owner allowed for top-level %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v1, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1496
    const/4 v0, 0x0

    .line 1504
    .local v0, "useOwner":Ljava/lang/reflect/Type;
    :goto_1
    const-string v1, "null type argument at index %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2, v1, v4}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1505
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    array-length v4, p2

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_2
    const-string v4, "invalid number of type parameters specified: expected %d, got %d"

    new-array v5, v6, [Ljava/lang/Object;

    .line 1506
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    array-length v3, p2

    .line 1507
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 1505
    invoke-static {v1, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1509
    new-instance v1, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p2, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils$ParameterizedTypeImpl;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v1

    .end local v0    # "useOwner":Ljava/lang/reflect/Type;
    :cond_0
    move v1, v3

    .line 1495
    goto :goto_0

    .line 1497
    :cond_1
    if-nez p0, :cond_2

    .line 1498
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "useOwner":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 1500
    .end local v0    # "useOwner":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    const-string v4, "%s is invalid owner type for parameterized %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v2

    invoke-static {v1, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1502
    move-object v0, p0

    .restart local v0    # "useOwner":Ljava/lang/reflect/Type;
    goto :goto_1

    :cond_3
    move v1, v3

    .line 1505
    goto :goto_2
.end method

.method private static parameterizedTypeToString(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/String;
    .locals 7
    .param p0, "p"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1789
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1790
    .local v3, "useOwner":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1792
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_0

    .line 1793
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    .end local v3    # "useOwner":Ljava/lang/reflect/Type;
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->findRecursiveTypes(Ljava/lang/reflect/ParameterizedType;)[I

    move-result-object v2

    .line 1805
    .local v2, "recursiveTypeIndexes":[I
    array-length v4, v2

    if-lez v4, :cond_2

    .line 1806
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendRecursiveTypes(Ljava/lang/StringBuilder;[I[Ljava/lang/reflect/Type;)V

    .line 1811
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1795
    .end local v2    # "recursiveTypeIndexes":[I
    .restart local v3    # "useOwner":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1796
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "useOwner":Ljava/lang/reflect/Type;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    :goto_2
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1798
    .restart local v3    # "useOwner":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1808
    .end local v3    # "useOwner":Ljava/lang/reflect/Type;
    .restart local v2    # "recursiveTypeIndexes":[I
    :cond_2
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 726
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 728
    .local v0, "replacementType":Ljava/lang/reflect/Type;
    if-nez v0, :cond_1

    .line 729
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing assignment type for type variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "replacementType":Ljava/lang/reflect/Type;
    :cond_0
    move-object v0, p0

    .line 734
    :cond_1
    return-object v0
.end method

.method public static toLongString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .line 1688
    const-string/jumbo v3, "var is null"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1690
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v2

    .line 1691
    .local v2, "d":Ljava/lang/reflect/GenericDeclaration;
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 1692
    check-cast v1, Ljava/lang/Class;

    .line 1694
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1695
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "d":Ljava/lang/reflect/GenericDeclaration;
    :goto_1
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1698
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "d":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1699
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 1701
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/Type;

    if-eqz v3, :cond_2

    .line 1702
    check-cast v2, Ljava/lang/reflect/Type;

    .end local v2    # "d":Ljava/lang/reflect/GenericDeclaration;
    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1704
    .restart local v2    # "d":Ljava/lang/reflect/GenericDeclaration;
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1891
    .local p0, "object":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/Type;

    .end local p0    # "object":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .restart local p0    # "object":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1661
    invoke-static {p0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1663
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->classToString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1675
    :goto_0
    return-object v0

    .line 1665
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1666
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizedTypeToString(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1668
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    .line 1669
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardTypeToString(Ljava/lang/reflect/WildcardType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1671
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 1672
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1674
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_4

    .line 1675
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->genericArrayTypeToString(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1677
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static typeVariableToString(Ljava/lang/reflect/TypeVariable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1771
    .local p0, "v":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1772
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1773
    .local v0, "bounds":[Ljava/lang/reflect/Type;
    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1774
    :cond_0
    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1775
    const-string v2, " & "

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1777
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static typesSatisfyVariables(Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v4, 0x0

    .line 1218
    const-string/jumbo v5, "typeVarAssigns is null"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1222
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 1223
    .local v3, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 1225
    .local v2, "type":Ljava/lang/reflect/Type;
    invoke-static {v3}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v8, v7

    move v5, v4

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v0, v7, v5

    .line 1226
    .local v0, "bound":Ljava/lang/reflect/Type;
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v2, v9, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1232
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .end local v2    # "type":Ljava/lang/reflect/Type;
    .end local v3    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :goto_1
    return v4

    .line 1225
    .restart local v0    # "bound":Ljava/lang/reflect/Type;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .restart local v2    # "type":Ljava/lang/reflect/Type;
    .restart local v3    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1232
    .end local v0    # "bound":Ljava/lang/reflect/Type;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .end local v2    # "type":Ljava/lang/reflect/Type;
    .end local v3    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 5
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;[",
            "Ljava/lang/reflect/Type;",
            ")[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 1410
    .local p0, "typeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    move-object v2, p1

    .line 1411
    .local v2, "result":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 1412
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 1413
    aget-object v4, v2, v0

    invoke-static {p0, v4}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1414
    .local v3, "unrolled":Ljava/lang/reflect/Type;
    if-nez v3, :cond_0

    .line 1415
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-static {v2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":[Ljava/lang/reflect/Type;
    check-cast v2, [Ljava/lang/reflect/Type;

    .restart local v2    # "result":[Ljava/lang/reflect/Type;
    move v0, v1

    .line 1412
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1417
    :cond_0
    aput-object v3, v2, v0

    goto :goto_1

    .line 1420
    .end local v3    # "unrolled":Ljava/lang/reflect/Type;
    :cond_1
    return-object v2
.end method

.method private static unrollVariableAssignments(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .local p1, "typeVarAssigns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :goto_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 496
    .local v0, "result":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 497
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 498
    goto :goto_0

    .line 502
    :cond_0
    return-object v0
.end method

.method public static unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 1367
    .local p0, "typeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    if-nez p0, :cond_0

    .line 1368
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    .line 1370
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->containsTypeVariables(Ljava/lang/reflect/Type;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1371
    instance-of v6, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_2

    .line 1372
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    invoke-static {p0, v6}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1398
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    :goto_0
    return-object p1

    .line 1374
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v6, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_6

    move-object v2, p1

    .line 1375
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 1377
    .local v2, "p":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    if-nez v6, :cond_4

    .line 1378
    move-object v3, p0

    .line 1383
    .local v3, "parameterizedTypeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :goto_1
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1384
    .local v0, "args":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_5

    .line 1385
    aget-object v6, v0, v1

    invoke-static {v3, v6}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1386
    .local v4, "unrolled":Ljava/lang/reflect/Type;
    if-eqz v4, :cond_3

    .line 1387
    aput-object v4, v0, v1

    .line 1384
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1380
    .end local v0    # "args":[Ljava/lang/reflect/Type;
    .end local v1    # "i":I
    .end local v3    # "parameterizedTypeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    .end local v4    # "unrolled":Ljava/lang/reflect/Type;
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1381
    .restart local v3    # "parameterizedTypeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    invoke-static {v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 1390
    .restart local v0    # "args":[Ljava/lang/reflect/Type;
    .restart local v1    # "i":I
    :cond_5
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-static {v7, v6, v0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->parameterizeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_0

    .line 1392
    .end local v0    # "args":[Ljava/lang/reflect/Type;
    .end local v1    # "i":I
    .end local v2    # "p":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "parameterizedTypeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    :cond_6
    instance-of v6, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_1

    move-object v5, p1

    .line 1393
    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 1394
    .local v5, "wild":Ljava/lang/reflect/WildcardType;
    invoke-static {}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-static {p0, v7}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withUpperBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v6

    .line 1395
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-static {p0, v7}, Lorg/apache/commons/lang3/reflect/TypeUtils;->unrollBounds(Ljava/util/Map;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->withLowerBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object p1

    goto :goto_0
.end method

.method public static wildcardType()Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    .locals 2

    .prologue
    .line 1550
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;-><init>(Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v0
.end method

.method private static wildcardTypeToString(Ljava/lang/reflect/WildcardType;)Ljava/lang/String;
    .locals 7
    .param p0, "w"    # Ljava/lang/reflect/WildcardType;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1851
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1852
    .local v1, "lowerBounds":[Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1853
    .local v2, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v3, v1

    if-gt v3, v5, :cond_0

    array-length v3, v1

    if-ne v3, v5, :cond_2

    aget-object v3, v1, v6

    if-eqz v3, :cond_2

    .line 1854
    :cond_0
    const-string v3, " super "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & "

    invoke-static {v3, v4, v1}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1858
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1855
    :cond_2
    array-length v3, v2

    if-gt v3, v5, :cond_3

    array-length v3, v2

    if-ne v3, v5, :cond_1

    const-class v3, Ljava/lang/Object;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1856
    :cond_3
    const-string v3, " extends "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & "

    invoke-static {v3, v4, v2}, Lorg/apache/commons/lang3/reflect/TypeUtils;->appendAllTo(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/Class;)Lorg/apache/commons/lang3/reflect/Typed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/apache/commons/lang3/reflect/Typed",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1735
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils;->wrap(Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/Typed;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/Typed;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/apache/commons/lang3/reflect/Typed",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1718
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/reflect/TypeUtils$1;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method
