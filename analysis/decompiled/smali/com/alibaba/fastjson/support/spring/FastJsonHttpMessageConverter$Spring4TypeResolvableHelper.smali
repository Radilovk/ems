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

    .prologue
    .line 298
    :try_start_0
    const-string v1, "org.springframework.core.ResolvableType"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 299
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 300
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->hasClazzResolvableType:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->isSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Type;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 293
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static getType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 10
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 312
    invoke-static {p0}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v3

    .line 313
    .local v3, "resolvedType":Lorg/springframework/core/ResolvableType;
    instance-of v8, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v8, :cond_1

    move-object v8, p0

    .line 314
    check-cast v8, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v5

    .line 315
    .local v5, "resolvedTypeVariable":Lorg/springframework/core/ResolvableType;
    sget-object v8, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v5, v8, :cond_0

    .line 316
    invoke-virtual {v5}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object p0

    .line 341
    .end local v3    # "resolvedType":Lorg/springframework/core/ResolvableType;
    .end local v5    # "resolvedTypeVariable":Lorg/springframework/core/ResolvableType;
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 318
    .restart local v3    # "resolvedType":Lorg/springframework/core/ResolvableType;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v8, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->hasUnresolvableGenerics()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v2, p0

    .line 319
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 320
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    array-length v8, v8

    new-array v0, v8, [Ljava/lang/Class;

    .line 321
    .local v0, "generics":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 323
    .local v7, "typeArguments":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v7

    if-ge v1, v8, :cond_4

    .line 324
    aget-object v6, v7, v1

    .line 325
    .local v6, "typeArgument":Ljava/lang/reflect/Type;
    instance-of v8, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v8, :cond_3

    move-object v8, v6

    .line 326
    check-cast v8, Ljava/lang/reflect/TypeVariable;

    invoke-static {p1}, Lorg/springframework/core/ResolvableType;->forClass(Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v4

    .line 327
    .local v4, "resolvedTypeArgument":Lorg/springframework/core/ResolvableType;
    sget-object v8, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v4, v8, :cond_2

    .line 328
    invoke-virtual {v4}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v0, v1

    .line 323
    .end local v4    # "resolvedTypeArgument":Lorg/springframework/core/ResolvableType;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    .restart local v4    # "resolvedTypeArgument":Lorg/springframework/core/ResolvableType;
    :cond_2
    invoke-static {v6}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v0, v1

    goto :goto_2

    .line 333
    .end local v4    # "resolvedTypeArgument":Lorg/springframework/core/ResolvableType;
    :cond_3
    invoke-static {v6}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;)Lorg/springframework/core/ResolvableType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v0, v1

    goto :goto_2

    .line 337
    .end local v6    # "typeArgument":Ljava/lang/reflect/Type;
    :cond_4
    invoke-virtual {v3}, Lorg/springframework/core/ResolvableType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v0}, Lorg/springframework/core/ResolvableType;->forClassWithGenerics(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/springframework/core/ResolvableType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/springframework/core/ResolvableType;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0
.end method

.method private static isSupport()Z
    .locals 1

    .prologue
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
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lorg/springframework/core/ResolvableType;",
            ")",
            "Lorg/springframework/core/ResolvableType;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->hasGenerics()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    invoke-static {p0, p1}, Lorg/springframework/core/ResolvableType;->forType(Ljava/lang/reflect/Type;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v1

    .line 348
    .local v1, "resolvedType":Lorg/springframework/core/ResolvableType;
    invoke-virtual {v1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 366
    .end local v1    # "resolvedType":Lorg/springframework/core/ResolvableType;
    :cond_0
    :goto_0
    return-object v1

    .line 353
    :cond_1
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getSuperType()Lorg/springframework/core/ResolvableType;

    move-result-object v2

    .line 354
    .local v2, "superType":Lorg/springframework/core/ResolvableType;
    sget-object v3, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    if-eq v2, v3, :cond_2

    .line 355
    invoke-static {p0, v2}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v1

    .line 356
    .restart local v1    # "resolvedType":Lorg/springframework/core/ResolvableType;
    invoke-virtual {v1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_0

    .line 360
    .end local v1    # "resolvedType":Lorg/springframework/core/ResolvableType;
    :cond_2
    invoke-virtual {p1}, Lorg/springframework/core/ResolvableType;->getInterfaces()[Lorg/springframework/core/ResolvableType;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 361
    .local v0, "ifc":Lorg/springframework/core/ResolvableType;
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/support/spring/FastJsonHttpMessageConverter$Spring4TypeResolvableHelper;->resolveVariable(Ljava/lang/reflect/TypeVariable;Lorg/springframework/core/ResolvableType;)Lorg/springframework/core/ResolvableType;

    move-result-object v1

    .line 362
    .restart local v1    # "resolvedType":Lorg/springframework/core/ResolvableType;
    invoke-virtual {v1}, Lorg/springframework/core/ResolvableType;->resolve()Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_0

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 366
    .end local v0    # "ifc":Lorg/springframework/core/ResolvableType;
    .end local v1    # "resolvedType":Lorg/springframework/core/ResolvableType;
    :cond_3
    sget-object v1, Lorg/springframework/core/ResolvableType;->NONE:Lorg/springframework/core/ResolvableType;

    goto :goto_0
.end method
