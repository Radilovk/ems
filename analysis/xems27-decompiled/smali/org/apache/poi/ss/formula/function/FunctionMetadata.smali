.class public final Lorg/apache/poi/ss/formula/function/FunctionMetadata;
.super Ljava/lang/Object;
.source "FunctionMetadata.java"


# static fields
.field private static final FUNCTION_MAX_PARAMS:S = 0x1es


# instance fields
.field private final _index:I

.field private final _maxParams:I

.field private final _minParams:I

.field private final _name:Ljava/lang/String;

.field private final _parameterClassCodes:[B

.field private final _returnClassCode:B


# direct methods
.method constructor <init>(ILjava/lang/String;IIB[B)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "minParams"    # I
    .param p4, "maxParams"    # I
    .param p5, "returnClassCode"    # B
    .param p6, "parameterClassCodes"    # [B

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    .line 46
    iput-object p2, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    .line 47
    iput p3, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    .line 48
    iput p4, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    .line 49
    iput-byte p5, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_returnClassCode:B

    .line 50
    iput-object p6, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_parameterClassCodes:[B

    .line 51
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    return v0
.end method

.method public getMaxParams()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    return v0
.end method

.method public getMinParams()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterClassCodes()[B
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_parameterClassCodes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getReturnClassCode()B
    .locals 1

    .line 68
    iget-byte v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_returnClassCode:B

    return v0
.end method

.method public hasFixedArgsLength()Z
    .locals 2

    .line 65
    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_minParams:I

    iget v1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnlimitedVarags()Z
    .locals 2

    .line 81
    iget v0, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_maxParams:I

    const/16 v1, 0x1e

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget v1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
