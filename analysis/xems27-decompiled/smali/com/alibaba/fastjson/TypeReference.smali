.class public Lcom/alibaba/fastjson/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final LIST_STRING:Ljava/lang/reflect/Type;

.field static classTypeCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    .line 100
    new-instance v0, Lcom/alibaba/fastjson/TypeReference$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/TypeReference$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/TypeReference$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->LIST_STRING:Ljava/lang/reflect/Type;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 43
    .local p0, "this":Lcom/alibaba/fastjson/TypeReference;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    .local v0, "superClass":Ljava/lang/reflect/Type;
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 48
    .local v1, "type":Ljava/lang/reflect/Type;
    sget-object v2, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 49
    .local v2, "cachedType":Ljava/lang/reflect/Type;
    if-nez v2, :cond_0

    .line 50
    sget-object v3, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v3, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/reflect/Type;

    .line 54
    :cond_0
    iput-object v2, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 55
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 9
    .param p1, "actualTypeArguments"    # [Ljava/lang/reflect/Type;

    .line 61
    .local p0, "this":Lcom/alibaba/fastjson/TypeReference;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 65
    .local v1, "superClass":Ljava/lang/reflect/Type;
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 66
    .local v2, "argType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 67
    .local v3, "rawType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 69
    .local v4, "argTypes":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 70
    .local v5, "actualIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_2

    .line 71
    aget-object v7, v4, v6

    instance-of v7, v7, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_0

    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 73
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "actualIndex":I
    .local v7, "actualIndex":I
    aget-object v5, p1, v5

    aput-object v5, v4, v6

    move v5, v7

    .line 76
    .end local v7    # "actualIndex":I
    .restart local v5    # "actualIndex":I
    :cond_0
    aget-object v7, v4, v6

    instance-of v7, v7, Ljava/lang/reflect/GenericArrayType;

    if-eqz v7, :cond_1

    .line 77
    aget-object v7, v4, v6

    check-cast v7, Ljava/lang/reflect/GenericArrayType;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v7

    aput-object v7, v4, v6

    .line 70
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    .end local v6    # "i":I
    :cond_2
    new-instance v6, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-direct {v6, v4, v0, v3}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 83
    .local v6, "key":Ljava/lang/reflect/Type;
    sget-object v7, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    .line 84
    .local v7, "cachedType":Ljava/lang/reflect/Type;
    if-nez v7, :cond_3

    .line 85
    sget-object v8, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v6, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v8, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/reflect/Type;

    .line 89
    :cond_3
    iput-object v7, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 91
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 97
    .local p0, "this":Lcom/alibaba/fastjson/TypeReference;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
