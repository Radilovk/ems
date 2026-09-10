.class final Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;
.super Ljava/lang/Object;
.source "FunctionDataBuilder.java"


# instance fields
.field private final _functionDataByIndex:Ljava/util/Map;

.field private final _functionDataByName:Ljava/util/Map;

.field private _maxFunctionIndex:I

.field private final _mutatingFunctionIndexes:Ljava/util/Set;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "sizeEstimate"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_maxFunctionIndex:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByName:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByIndex:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_mutatingFunctionIndexes:Ljava/util/Set;

    .line 43
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;IIB[BZ)V
    .locals 8
    .param p1, "functionIndex"    # I
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "minParams"    # I
    .param p4, "maxParams"    # I
    .param p5, "returnClassCode"    # B
    .param p6, "parameterClassCodes"    # [B
    .param p7, "hasFootnote"    # Z

    .line 47
    new-instance v7, Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;-><init>(ILjava/lang/String;IIB[B)V

    .line 50
    .local v0, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 53
    .local v1, "indexKey":Ljava/lang/Integer;
    iget v2, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_maxFunctionIndex:I

    if-le p1, v2, :cond_0

    .line 54
    iput p1, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_maxFunctionIndex:I

    .line 58
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByName:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 59
    .local v2, "prevFM":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-eqz v2, :cond_2

    .line 60
    if-eqz p7, :cond_1

    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_mutatingFunctionIndexes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByIndex:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple entries for function name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByIndex:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 66
    if-eqz v2, :cond_4

    .line 67
    if-eqz p7, :cond_3

    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_mutatingFunctionIndexes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByName:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple entries for function index ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_4
    :goto_1
    if-eqz p7, :cond_5

    .line 73
    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_mutatingFunctionIndexes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_5
    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByIndex:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByName:Ljava/util/Map;

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public build()Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;
    .locals 5

    .line 81
    iget-object v0, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 82
    .local v0, "jumbledArray":[Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    iget v1, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_maxFunctionIndex:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 84
    .local v1, "fdIndexArray":[Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 85
    aget-object v3, v0, v2

    .line 86
    .local v3, "fd":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v4

    aput-object v3, v1, v4

    .line 84
    .end local v3    # "fd":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;

    iget-object v3, p0, Lorg/apache/poi/ss/formula/function/FunctionDataBuilder;->_functionDataByName:Ljava/util/Map;

    invoke-direct {v2, v1, v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;-><init>([Lorg/apache/poi/ss/formula/function/FunctionMetadata;Ljava/util/Map;)V

    return-object v2
.end method
