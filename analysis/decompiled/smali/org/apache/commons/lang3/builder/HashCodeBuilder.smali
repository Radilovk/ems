.class public Lorg/apache/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_VALUE:I = 0x11

.field private static final DEFAULT_MULTIPLIER_VALUE:I = 0x25

.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 544
    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 545
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 546
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "initialOddNumber"    # I
    .param p2, "multiplierOddNumber"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 566
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "HashCodeBuilder requires an odd initial value"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 567
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "HashCodeBuilder requires an odd multiplier"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iput p2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 569
    iput p1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 570
    return-void

    :cond_0
    move v0, v2

    .line 566
    goto :goto_0

    :cond_1
    move v1, v2

    .line 567
    goto :goto_1
.end method

.method private appendArray(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 865
    instance-of v0, p1, [J

    if-eqz v0, :cond_0

    .line 866
    check-cast p1, [J

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 885
    :goto_0
    return-void

    .line 867
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    .line 868
    check-cast p1, [I

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 869
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    .line 870
    check-cast p1, [S

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 871
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    .line 872
    check-cast p1, [C

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 873
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    .line 874
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 875
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_5

    .line 876
    check-cast p1, [D

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 877
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    .line 878
    check-cast p1, [F

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 879
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [Z

    if-eqz v0, :cond_7

    .line 880
    check-cast p1, [Z

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 883
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 164
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 165
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "builder"    # Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .param p3, "useTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/lang3/builder/HashCodeBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 192
    .local v3, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 193
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v3, v4

    .line 194
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p4, v6}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 195
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez p3, :cond_1

    .line 196
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 197
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_2

    const-class v6, Lorg/apache/commons/lang3/builder/HashCodeExclude;

    .line 198
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 200
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 201
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v4

    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    .line 211
    throw v4

    .line 210
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 255
    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/String;

    move v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z

    .prologue
    .line 302
    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 5
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p3, "testTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class",
            "<-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v3, 0x0

    .line 357
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v4, "The object to build a hash code for must not be null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 358
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    .line 359
    .local v0, "builder":Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 360
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 361
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v1, p4, :cond_1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 363
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "builder":Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move v2, v3

    .line 357
    goto :goto_0

    .line 365
    .restart local v0    # "builder":Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v2

    return v2
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "testTransients"    # Z

    .prologue
    .line 404
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 485
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static register(Ljava/lang/Object;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 498
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 499
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/lang3/builder/IDKey;>;"
    if-nez v0, :cond_0

    .line 500
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/lang3/builder/IDKey;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 501
    .restart local v0    # "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/lang3/builder/IDKey;>;"
    sget-object v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 503
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method private static unregister(Ljava/lang/Object;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 519
    invoke-static {}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 520
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_0

    .line 521
    new-instance v1, Lorg/apache/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    sget-object v1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 526
    :cond_0
    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 630
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 631
    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 666
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 667
    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 700
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 733
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 734
    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 767
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 768
    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 805
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 806
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 839
    if-nez p1, :cond_0

    .line 840
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 851
    :goto_0
    return-object p0

    .line 843
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->appendArray(Ljava/lang/Object;)V

    goto :goto_0

    .line 848
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_0
.end method

.method public append(S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 917
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 918
    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 594
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 595
    return-object p0

    .line 594
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public append([B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [B

    .prologue
    .line 646
    if-nez p1, :cond_1

    .line 647
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 653
    :cond_0
    return-object p0

    .line 649
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v0, p1, v1

    .line 650
    .local v0, "element":B
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(B)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [C

    .prologue
    .line 680
    if-nez p1, :cond_1

    .line 681
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 687
    :cond_0
    return-object p0

    .line 683
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v0, p1, v1

    .line 684
    .local v0, "element":C
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(C)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append([D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 4
    .param p1, "array"    # [D

    .prologue
    .line 713
    if-nez p1, :cond_1

    .line 714
    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v3, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 720
    :cond_0
    return-object p0

    .line 716
    :cond_1
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v0, p1, v2

    .line 717
    .local v0, "element":D
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public append([F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [F

    .prologue
    .line 747
    if-nez p1, :cond_1

    .line 748
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 754
    :cond_0
    return-object p0

    .line 750
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 751
    .local v0, "element":F
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(F)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append([I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [I

    .prologue
    .line 781
    if-nez p1, :cond_1

    .line 782
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 788
    :cond_0
    return-object p0

    .line 784
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 785
    .local v0, "element":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append([J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 4
    .param p1, "array"    # [J

    .prologue
    .line 819
    if-nez p1, :cond_1

    .line 820
    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v3, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 826
    :cond_0
    return-object p0

    .line 822
    :cond_1
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v0, p1, v2

    .line 823
    .local v0, "element":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 822
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 897
    if-nez p1, :cond_1

    .line 898
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 904
    :cond_0
    return-object p0

    .line 900
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 901
    .local v0, "element":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append([S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [S

    .prologue
    .line 931
    if-nez p1, :cond_1

    .line 932
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 938
    :cond_0
    return-object p0

    .line 934
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-short v0, p1, v1

    .line 935
    .local v0, "element":S
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(S)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 934
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append([Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "array"    # [Z

    .prologue
    .line 608
    if-nez p1, :cond_1

    .line 609
    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 615
    :cond_0
    return-object p0

    .line 611
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-boolean v0, p1, v1

    .line 612
    .local v0, "element":Z
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public appendSuper(I)Lorg/apache/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "superHashCode"    # I

    .prologue
    .line 952
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 953
    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 976
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 990
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toHashCode()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
