.class Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;
.super Ljava/lang/Object;
.source "FastJsonHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Spring4TypeResolvableHelper"
.end annotation


# static fields
.field private static hasClazzResolvableType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 298
    :try_start_0
    const-string v0, "org.springframework.core.ResolvableType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 299
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    .line 303
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 293
    invoke-static {}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->isSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Type;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 293
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 8
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 311
    .local p1, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_5

    .line 312
    invoke-static {p0}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 313
    .local v0, "resolvedType":Lorg/springframework/core/ResolvableType;
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_1

    .line 314
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v1

    .line 315
    .local v1, "resolvedTypeVariable":Lorg/springframework/core/ResolvableType;
    sget-object v2, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v1, v2, :cond_0

    .line 316
    invoke-virtual {v1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 315
    .end local v1    # "resolvedTypeVariable":Lorg/springframework/core/ResolvableType;
    :cond_0
    goto :goto_3

    .line 318
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->hasUnresolvableGenerics()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 319
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 320
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Class;

    .line 321
    .local v2, "generics":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 323
    .local v3, "typeArguments":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 324
    aget-object v5, v3, v4

    .line 325
    .local v5, "typeArgument":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_3

    .line 326
    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v6

    .line 327
    .local v6, "resolvedTypeArgument":Lorg/springframework/core/ResolvableType;
    sget-object v7, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v6, v7, :cond_2

    .line 328
    invoke-virtual {v6}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v2, v4

    goto :goto_1

    .line 330
    :cond_2
    invoke-static {v5}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v2, v4

    .line 332
    .end local v6    # "resolvedTypeArgument":Lorg/springframework/core/ResolvableType;
    :goto_1
    goto :goto_2

    .line 333
    :cond_3
    invoke-static {v5}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v4

    .line 323
    .end local v5    # "typeArgument":Ljava/lang/reflect/Type;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/springframework/core/ResolvableType;->forClassWithGenerics(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/springframework/core/ResolvableType;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    return-object v4

    .line 341
    .end local v0    # "resolvedType":Lorg/springframework/core/ResolvableType;
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "generics":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "typeArguments":[Ljava/lang/reflect/Type;
    :cond_5
    :goto_3
    return-object p0
.end method

.method private static isSupport()Z
    .locals 1

    .line 306
    sget-boolean v0, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    return v0
.end method

.method private static resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;
    .locals 7
    .param p1, "contextType"    # Lorg/springframework/core/ResolvableType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lorg/springframework/core/ResolvableType;",
            ")",
            "Lorg/springframework/core/ResolvableType;"
        }
    .end annotation

    .line 346
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->hasGenerics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {p0, p1}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 348
    .local v0, "resolvedType":Lorg/springframework/core/ResolvableType;
    invoke-virtual {v0}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    return-object v0

    .line 353
    .end local v0    # "resolvedType":Lorg/springframework/core/ResolvableType;
    :cond_0
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getSuperType()Lorg/springframework/core/ResolvableType;

    move-result-object v0

    .line 354
    .local v0, "superType":Lorg/springframework/core/ResolvableType;
    sget-object v1, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v0, v1, :cond_1

    .line 355
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v1

    .line 356
    .local v1, "resolvedType":Lorg/springframework/core/ResolvableType;
    invoke-virtual {v1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 357
    return-object v1

    .line 360
    .end local v1    # "resolvedType":Lorg/springframework/core/ResolvableType;
    :cond_1
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getInterfaces()[Lorg/springframework/core/ResolvableType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 361
    .local v4, "ifc":Lorg/springframework/core/ResolvableType;
    invoke-static {p0, v4}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v5

    .line 362
    .local v5, "resolvedType":Lorg/springframework/core/ResolvableType;
    invoke-virtual {v5}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 363
    return-object v5

    .line 360
    .end local v4    # "ifc":Lorg/springframework/core/ResolvableType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 366
    .end local v5    # "resolvedType":Lorg/springframework/core/ResolvableType;
    :cond_3
    sget-object v1, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    return-object v1
.end method
