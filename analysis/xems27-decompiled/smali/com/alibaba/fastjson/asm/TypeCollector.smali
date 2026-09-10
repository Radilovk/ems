.class public Lcom/alibaba/fastjson/asm/TypeCollector;
.super Ljava/lang/Object;
.source "TypeCollector.java"


# static fields
.field private static final primitives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected collector:Lcom/alibaba/fastjson/asm/MethodCollector;

.field private final methodName:Ljava/lang/String;

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/asm/TypeCollector$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/TypeCollector$1;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 27
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->methodName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 31
    return-void
.end method

.method private correctTypeName(Lcom/alibaba/fastjson/asm/Type;Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Lcom/alibaba/fastjson/asm/Type;
    .param p2, "paramTypeName"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "s":Ljava/lang/String;
    const-string v1, ""

    .line 69
    .local v1, "braces":Ljava/lang/String;
    :goto_0
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 74
    sget-object v2, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/fastjson/asm/TypeCollector;->primitives:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public getParameterNamesForMethod()[Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/alibaba/fastjson/asm/MethodCollector;->debugInfoPresent:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/MethodCollector;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected visitMethod(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodCollector;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    return-object v1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->methodName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    return-object v1

    .line 42
    :cond_1
    invoke-static {p3}, Lcom/alibaba/fastjson/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    .line 43
    .local v0, "argTypes":[Lcom/alibaba/fastjson/asm/Type;
    const/4 v2, 0x0

    .line 44
    .local v2, "longOrDoubleQuantity":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 45
    .local v5, "t":Lcom/alibaba/fastjson/asm/Type;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "className":Ljava/lang/String;
    const-string v7, "long"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "double"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    .end local v5    # "t":Lcom/alibaba/fastjson/asm/Type;
    .end local v6    # "className":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_4
    array-length v3, v0

    iget-object v4, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    array-length v4, v4

    if-eq v3, v4, :cond_5

    .line 52
    return-object v1

    .line 54
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_7

    .line 55
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->parameterTypes:[Ljava/lang/Class;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alibaba/fastjson/asm/TypeCollector;->correctTypeName(Lcom/alibaba/fastjson/asm/Type;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 56
    return-object v1

    .line 54
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    .end local v3    # "i":I
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 61
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    array-length v4, v0

    add-int/2addr v4, v2

    invoke-direct {v1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodCollector;-><init>(II)V

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/TypeCollector;->collector:Lcom/alibaba/fastjson/asm/MethodCollector;

    .line 60
    return-object v1
.end method
