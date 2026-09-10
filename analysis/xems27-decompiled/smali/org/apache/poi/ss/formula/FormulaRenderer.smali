.class public Lorg/apache/poi/ss/formula/FormulaRenderer;
.super Ljava/lang/Object;
.source "FormulaRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOperands(Ljava/util/Stack;I)[Ljava/lang/String;
    .locals 4
    .param p1, "nOperands"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    .local p0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    new-array v0, p1, [Ljava/lang/String;

    .line 120
    .local v0, "operands":[Ljava/lang/String;
    add-int/lit8 v1, p1, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_1

    .line 121
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 120
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 122
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too few arguments supplied to operation. Expected ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") operands but got ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    .end local v1    # "j":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;
    .locals 9
    .param p0, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 47
    if-eqz p1, :cond_d

    array-length v0, p1

    if-eqz v0, :cond_d

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 52
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    .line 54
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-nez v5, :cond_9

    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v5, :cond_9

    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    if-eqz v5, :cond_0

    .line 58
    goto/16 :goto_1

    .line 60
    :cond_0
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v5, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 62
    .local v5, "contents":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    goto/16 :goto_1

    .line 65
    .end local v5    # "contents":Ljava/lang/String;
    :cond_1
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v5, :cond_6

    .line 66
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 67
    .local v5, "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSpace()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 72
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSemiVolatile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 79
    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 82
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getNumberOfOperands()I

    move-result v6

    invoke-static {v0, v6}, Lorg/apache/poi/ss/formula/FormulaRenderer;->getOperands(Ljava/util/Stack;I)[Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "operands":[Ljava/lang/String;
    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    goto :goto_1

    .line 86
    .end local v6    # "operands":[Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected tAttr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    .end local v5    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    :cond_6
    instance-of v5, v4, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;

    if-eqz v5, :cond_7

    .line 90
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;

    .line 91
    .local v5, "optg":Lorg/apache/poi/ss/formula/WorkbookDependentFormula;
    invoke-interface {v5, p0}, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    goto :goto_1

    .line 94
    .end local v5    # "optg":Lorg/apache/poi/ss/formula/WorkbookDependentFormula;
    :cond_7
    instance-of v5, v4, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-nez v5, :cond_8

    .line 95
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toFormulaString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    goto :goto_1

    .line 99
    :cond_8
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 100
    .local v5, "o":Lorg/apache/poi/ss/formula/ptg/OperationPtg;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->getNumberOfOperands()I

    move-result v6

    invoke-static {v0, v6}, Lorg/apache/poi/ss/formula/FormulaRenderer;->getOperands(Ljava/util/Stack;I)[Ljava/lang/String;

    move-result-object v6

    .line 101
    .restart local v6    # "operands":[Ljava/lang/String;
    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->toFormulaString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v5    # "o":Lorg/apache/poi/ss/formula/ptg/OperationPtg;
    .end local v6    # "operands":[Ljava/lang/String;
    :cond_9
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 103
    .end local v1    # "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_a
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 108
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 114
    return-object v1

    .line 112
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "too much stuff left on the stack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v1    # "result":Ljava/lang/String;
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Stack underflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    .end local v0    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ptgs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
