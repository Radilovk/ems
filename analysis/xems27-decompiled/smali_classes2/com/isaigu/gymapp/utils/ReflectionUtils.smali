.class public Lcom/isaigu/gymapp/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;,
        Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;,
        Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;,
        Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;
    }
.end annotation


# static fields
.field private static final CGLIB_RENAMED_METHOD_PREFIX:Ljava/lang/String; = "CGLIB$"

.field public static final COPYABLE_FIELDS:Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;

.field public static final NON_BRIDGED_METHODS:Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;

.field private static final NO_FIELDS:[Ljava/lang/reflect/Field;

.field private static final NO_METHODS:[Ljava/lang/reflect/Method;

.field public static final USER_DECLARED_METHODS:Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;

.field private static final declaredFieldsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final declaredMethodsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/reflect/Method;

    sput-object v1, Lcom/isaigu/gymapp/utils/ReflectionUtils;->NO_METHODS:[Ljava/lang/reflect/Method;

    .line 20
    new-array v0, v0, [Ljava/lang/reflect/Field;

    sput-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->NO_FIELDS:[Ljava/lang/reflect/Field;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->declaredMethodsCache:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->declaredFieldsCache:Ljava/util/Map;

    .line 23
    new-instance v0, Lcom/isaigu/gymapp/utils/ReflectionUtils$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->COPYABLE_FIELDS:Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;

    .line 28
    new-instance v0, Lcom/isaigu/gymapp/utils/ReflectionUtils$2;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils$2;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->NON_BRIDGED_METHODS:Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;

    .line 33
    new-instance v0, Lcom/isaigu/gymapp/utils/ReflectionUtils$3;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils$3;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->USER_DECLARED_METHODS:Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 507
    sget-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->declaredMethodsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 508
    sget-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->declaredFieldsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 509
    return-void
.end method

.method public static declaresException(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 205
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 206
    .local v0, "declaredExceptions":[Ljava/lang/Class;
    move-object v1, v0

    .line 207
    .local v1, "var3":[Ljava/lang/Class;
    array-length v2, v0

    .line 209
    .local v2, "var4":I
    const/4 v3, 0x0

    .local v3, "var5":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 210
    aget-object v4, v1, v3

    .line 211
    .local v4, "declaredException":Ljava/lang/Class;
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    const/4 v5, 0x1

    return v5

    .line 209
    .end local v4    # "declaredException":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "var5":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static doWithFields(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;)V
    .locals 1
    .param p1, "fc"    # Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;",
            ")V"
        }
    .end annotation

    .line 451
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->doWithFields(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;)V

    .line 452
    return-void
.end method

.method public static doWithFields(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;)V
    .locals 7
    .param p1, "fc"    # Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;
    .param p2, "ff"    # Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;",
            "Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;",
            ")V"
        }
    .end annotation

    .line 455
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 458
    .local v0, "targetClass":Ljava/lang/Class;
    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 459
    .local v1, "fields":[Ljava/lang/reflect/Field;
    move-object v2, v1

    .line 460
    .local v2, "var5":[Ljava/lang/reflect/Field;
    array-length v3, v1

    .line 462
    .local v3, "var6":I
    const/4 v4, 0x0

    .local v4, "var7":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 463
    aget-object v5, v2, v4

    .line 464
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz p2, :cond_1

    invoke-interface {p2, v5}, Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;->matches(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    :cond_1
    :try_start_0
    invoke-interface {p1, v5}, Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;->doWith(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    goto :goto_1

    .line 467
    :catch_0
    move-exception v6

    .line 462
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    .end local v4    # "var7":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 474
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "var5":[Ljava/lang/reflect/Field;
    .end local v3    # "var6":I
    if-eqz v0, :cond_4

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 476
    :cond_4
    return-void
.end method

.method public static doWithLocalFields(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;)V
    .locals 5
    .param p1, "fc"    # Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;",
            ")V"
        }
    .end annotation

    .line 435
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 436
    .local v0, "var2":[Ljava/lang/reflect/Field;
    array-length v1, v0

    .line 438
    .local v1, "var3":I
    const/4 v2, 0x0

    .local v2, "var4":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 439
    aget-object v3, v0, v2

    .line 442
    .local v3, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-interface {p1, v3}, Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;->doWith(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    goto :goto_1

    .line 443
    :catch_0
    move-exception v4

    .line 438
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v2    # "var4":I
    :cond_0
    return-void
.end method

.method public static doWithLocalMethods(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;)V
    .locals 6
    .param p1, "mc"    # Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;",
            ")V"
        }
    .end annotation

    .line 290
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 291
    .local v0, "methods":[Ljava/lang/reflect/Method;
    move-object v1, v0

    .line 292
    .local v1, "var3":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .line 294
    .local v2, "var4":I
    const/4 v3, 0x0

    .local v3, "var5":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 295
    aget-object v4, v1, v3

    .line 298
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-interface {p1, v4}, Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;->doWith(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    goto :goto_1

    .line 299
    :catch_0
    move-exception v5

    .line 294
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "var5":I
    :cond_0
    return-void
.end method

.method public static doWithMethods(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;)V
    .locals 1
    .param p1, "mc"    # Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;",
            ")V"
        }
    .end annotation

    .line 307
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->doWithMethods(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;)V

    .line 308
    return-void
.end method

.method public static doWithMethods(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;)V
    .locals 6
    .param p1, "mc"    # Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;
    .param p2, "mf"    # Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;",
            "Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;",
            ")V"
        }
    .end annotation

    .line 311
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 312
    .local v0, "methods":[Ljava/lang/reflect/Method;
    move-object v1, v0

    .line 313
    .local v1, "var4":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .line 316
    .local v2, "var5":I
    const/4 v3, 0x0

    .local v3, "var6":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 317
    aget-object v4, v1, v3

    .line 318
    .local v4, "superIfc":Ljava/lang/reflect/Method;
    if-eqz p2, :cond_0

    invoke-interface {p2, v4}, Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;->matches(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    :cond_0
    :try_start_0
    invoke-interface {p1, v4}, Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;->doWith(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_1

    .line 321
    :catch_0
    move-exception v5

    .line 316
    .end local v4    # "superIfc":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 328
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->doWithMethods(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;)V

    goto :goto_3

    .line 329
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 330
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 331
    .local v4, "var10":[Ljava/lang/Class;
    array-length v2, v4

    .line 333
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    .line 334
    aget-object v5, v4, v3

    .line 335
    .local v5, "var11":Ljava/lang/Class;
    invoke-static {v5, p1, p2}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->doWithMethods(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodFilter;)V

    .line 333
    .end local v5    # "var11":Ljava/lang/Class;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 339
    .end local v4    # "var10":[Ljava/lang/Class;
    :cond_4
    :goto_3
    return-void
.end method

.method private static findConcreteMethodsOnInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 410
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 411
    .local v0, "result":Ljava/util/LinkedList;
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 412
    .local v1, "var2":[Ljava/lang/Class;
    array-length v2, v1

    .line 414
    .local v2, "var3":I
    const/4 v3, 0x0

    .local v3, "var4":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 415
    aget-object v4, v1, v3

    .line 416
    .local v4, "ifc":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 417
    .local v5, "var6":[Ljava/lang/reflect/Method;
    array-length v6, v5

    .line 419
    .local v6, "var7":I
    const/4 v7, 0x0

    .local v7, "var8":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 420
    aget-object v8, v5, v7

    .line 421
    .local v8, "ifcMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 422
    if-nez v0, :cond_0

    .line 423
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v9

    .line 426
    :cond_0
    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v8    # "ifcMethod":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 414
    .end local v4    # "ifc":Ljava/lang/Class;
    .end local v5    # "var6":[Ljava/lang/reflect/Method;
    .end local v6    # "var7":I
    .end local v7    # "var8":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    .end local v3    # "var4":I
    :cond_3
    return-object v0
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 43
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 47
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "searchType":Ljava/lang/Class;
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v1, v0, :cond_4

    if-eqz v0, :cond_4

    .line 48
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 49
    .local v1, "fields":[Ljava/lang/reflect/Field;
    move-object v2, v1

    .line 50
    .local v2, "var5":[Ljava/lang/reflect/Field;
    array-length v3, v1

    .line 52
    .local v3, "var6":I
    const/4 v4, 0x0

    .local v4, "var7":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 53
    aget-object v5, v2, v4

    .line 54
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz p1, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 52
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    :cond_2
    :goto_2
    return-object v5

    .line 47
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "var5":[Ljava/lang/reflect/Field;
    .end local v3    # "var6":I
    .end local v4    # "var7":I
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 60
    .end local v0    # "searchType":Ljava/lang/Class;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 93
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static varargs findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 98
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "searchType":Ljava/lang/Class;
    :goto_0
    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    .local v1, "methods":[Ljava/lang/reflect/Method;
    :goto_1
    move-object v2, v1

    .line 101
    .local v2, "var5":[Ljava/lang/reflect/Method;
    array-length v3, v1

    .line 103
    .local v3, "var6":I
    const/4 v4, 0x0

    .local v4, "var7":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 104
    aget-object v5, v2, v4

    .line 105
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    :cond_1
    return-object v5

    .line 103
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 98
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    .end local v2    # "var5":[Ljava/lang/reflect/Method;
    .end local v3    # "var6":I
    .end local v4    # "var7":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 111
    .end local v0    # "searchType":Ljava/lang/Class;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 342
    .local p0, "leafClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    .local v0, "methods":Ljava/util/ArrayList;
    new-instance v1, Lcom/isaigu/gymapp/utils/ReflectionUtils$4;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils$4;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->doWithMethods(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;)V

    .line 348
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public static getClassFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 88
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 89
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static getDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 479
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->declaredFieldsCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 480
    .local v0, "result":[Ljava/lang/reflect/Field;
    if-nez v0, :cond_1

    .line 481
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 482
    sget-object v1, Lcom/isaigu/gymapp/utils/ReflectionUtils;->declaredFieldsCache:Ljava/util/Map;

    array-length v2, v0

    if-nez v2, :cond_0

    sget-object v2, Lcom/isaigu/gymapp/utils/ReflectionUtils;->NO_FIELDS:[Ljava/lang/reflect/Field;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_1
    return-object v0
.end method

.method private static getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 386
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/isaigu/gymapp/utils/ReflectionUtils;->declaredMethodsCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    check-cast v0, [Ljava/lang/reflect/Method;

    .line 387
    .local v0, "result":[Ljava/lang/reflect/Method;
    if-nez v0, :cond_3

    .line 388
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 389
    .local v1, "declaredMethods":[Ljava/lang/reflect/Method;
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->findConcreteMethodsOnInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 390
    .local v2, "defaultMethods":Ljava/util/List;
    if-eqz v2, :cond_1

    .line 391
    array-length v3, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/reflect/Method;

    .line 392
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    array-length v3, v1

    .line 395
    .local v3, "index":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "var5":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 396
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 397
    .local v5, "defaultMethod":Ljava/lang/reflect/Method;
    aput-object v5, v0, v3

    .line 395
    .end local v5    # "defaultMethod":Ljava/lang/reflect/Method;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    .end local v3    # "index":I
    .end local v4    # "var5":Ljava/util/Iterator;
    :cond_0
    goto :goto_1

    .line 400
    :cond_1
    move-object v0, v1

    .line 403
    :goto_1
    sget-object v3, Lcom/isaigu/gymapp/utils/ReflectionUtils;->declaredMethodsCache:Ljava/util/Map;

    array-length v4, v0

    if-nez v4, :cond_2

    sget-object v4, Lcom/isaigu/gymapp/utils/ReflectionUtils;->NO_METHODS:[Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v1    # "declaredMethods":[Ljava/lang/reflect/Method;
    .end local v2    # "defaultMethods":Ljava/util/List;
    :cond_3
    return-object v0
.end method

.method public static getField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "var3":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->handleReflectionException(Ljava/lang/Exception;)V

    .line 79
    .end local v0    # "var3":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getObjectFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 84
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->getField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getUniqueDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 352
    .local p0, "leafClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v0, "methods":Ljava/util/ArrayList;
    new-instance v1, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils$5;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->doWithMethods(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$MethodCallback;)V

    .line 382
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method

.method public static handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/reflect/InvocationTargetException;

    .line 179
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->rethrowRuntimeException(Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method public static handleReflectionException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Exception;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    instance-of v0, p0, Ljava/lang/NoSuchMethodException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    .line 167
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V

    .line 170
    :cond_2
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 176
    :goto_0
    return-void
.end method

.method public static varargs invokeClassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 115
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 116
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeJdbcMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->invokeJdbcMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeJdbcMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 144
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "var5":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/sql/SQLException;

    .line 152
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0

    .line 145
    .end local v0    # "var5":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "var4":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->handleReflectionException(Ljava/lang/Exception;)V

    .line 153
    .end local v0    # "var4":Ljava/lang/IllegalAccessException;
    nop

    .line 154
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "target"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 130
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "var4":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->handleReflectionException(Ljava/lang/Exception;)V

    .line 135
    .end local v0    # "var4":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs invokeObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Ljava/lang/Class;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isCglibRenamedMethod(Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "renamedMethod"    # Ljava/lang/reflect/Method;

    .line 255
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "name":Ljava/lang/String;
    const-string v1, "CGLIB$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 257
    return v3

    .line 260
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v2, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x24

    if-ne v1, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public static isEqualsMethod(Ljava/lang/reflect/Method;)Z
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 225
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 227
    .local v1, "paramTypes":[Ljava/lang/Class;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, v1, v0

    const-class v4, Ljava/lang/Object;

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 229
    .end local v1    # "paramTypes":[Ljava/lang/Class;
    :cond_1
    return v0
.end method

.method public static isHashCodeMethod(Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 234
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isObjectMethod(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 242
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 243
    return v0

    .line 246
    :cond_0
    :try_start_0
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    const/4 v0, 0x1

    return v0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "var2":Ljava/lang/Exception;
    return v0
.end method

.method public static isPublicStaticFinal(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 220
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 221
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isToStringMethod(Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 238
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeAccessible(Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 283
    .local p0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 287
    :cond_1
    return-void
.end method

.method public static makeAccessible(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 269
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 273
    :cond_1
    return-void
.end method

.method public static makeAccessible(Ljava/lang/reflect/Method;)V
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 276
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 280
    :cond_1
    return-void
.end method

.method public static rethrowException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    .line 202
    :goto_0
    return-void
.end method

.method public static rethrowRuntimeException(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    .line 191
    :goto_0
    return-void
.end method

.method public static setField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 65
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "var4":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->handleReflectionException(Ljava/lang/Exception;)V

    .line 70
    .end local v0    # "var4":Ljava/lang/IllegalAccessException;
    :goto_0
    return-void
.end method

.method public static shallowCopyFieldState(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "dest"    # Ljava/lang/Object;

    .line 489
    if-nez p0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/utils/ReflectionUtils$6;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/utils/ReflectionUtils$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lcom/isaigu/gymapp/utils/ReflectionUtils;->COPYABLE_FIELDS:Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/utils/ReflectionUtils;->doWithFields(Ljava/lang/Class;Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldCallback;Lcom/isaigu/gymapp/utils/ReflectionUtils$FieldFilter;)V

    .line 504
    :goto_0
    return-void
.end method
