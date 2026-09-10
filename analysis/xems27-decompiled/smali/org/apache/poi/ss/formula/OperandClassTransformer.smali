.class final Lorg/apache/poi/ss/formula/OperandClassTransformer;
.super Ljava/lang/Object;
.source "OperandClassTransformer.java"


# instance fields
.field private final _formulaType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "formulaType"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:I

    .line 63
    return-void
.end method

.method private static isSimpleValueFunction(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 6
    .param p0, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 161
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 162
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    .line 163
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 164
    return v1

    .line 166
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getNumberOfOperands()I

    move-result v2

    .line 167
    .local v2, "numberOfOperands":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 168
    invoke-virtual {v0, v4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getParameterClass(I)B

    move-result v5

    if-eq v5, v3, :cond_1

    .line 169
    return v1

    .line 167
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 172
    .end local v4    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 174
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .end local v2    # "numberOfOperands":I
    :cond_3
    return v1
.end method

.method private static isSingleArgSum(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 2
    .param p0, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 153
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v0, :cond_0

    .line 154
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 155
    .local v0, "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v1

    return v1

    .line 157
    .end local v0    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setSimpleValueFuncClass(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;BZ)V
    .locals 1
    .param p1, "afp"    # Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .line 285
    const/16 v0, 0x40

    if-nez p3, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_1

    .line 286
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 290
    :goto_1
    return-void
.end method

.method private transformClass(BBZ)B
    .locals 3
    .param p1, "currentOperandClass"    # B
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .line 179
    if-eqz p2, :cond_3

    const/16 v0, 0x40

    const/16 v1, 0x20

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected operand class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    if-nez p3, :cond_2

    .line 182
    return v1

    .line 186
    :cond_2
    :goto_0
    return v0

    .line 188
    :cond_3
    if-nez p3, :cond_4

    .line 189
    return p1

    .line 191
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private transformFunctionNode(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;[Lorg/apache/poi/ss/formula/ParseNode;BZ)V
    .locals 7
    .param p1, "afp"    # Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .param p2, "children"    # [Lorg/apache/poi/ss/formula/ParseNode;
    .param p3, "desiredOperandClass"    # B
    .param p4, "callerForceArrayFlag"    # Z

    .line 200
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v0

    .line 202
    .local v0, "defaultReturnOperandClass":B
    const-string v1, ")"

    const-string v2, "Unexpected operand class ("

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x40

    if-eqz p4, :cond_4

    .line 203
    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_0

    move v1, v3

    .line 213
    .local v1, "localForceArrayFlag":Z
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 214
    const/4 v1, 0x0

    .line 215
    goto/16 :goto_3

    .line 221
    .end local v1    # "localForceArrayFlag":Z
    .local v3, "localForceArrayFlag":Z
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    .end local v3    # "localForceArrayFlag":Z
    :cond_1
    move v1, v3

    .line 217
    .restart local v1    # "localForceArrayFlag":Z
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 218
    const/4 v1, 0x1

    .line 219
    goto/16 :goto_3

    .line 205
    .end local v1    # "localForceArrayFlag":Z
    :cond_2
    if-nez p3, :cond_3

    .line 206
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 210
    :goto_0
    const/4 v1, 0x0

    .line 211
    .restart local v1    # "localForceArrayFlag":Z
    goto/16 :goto_3

    .line 202
    .end local v1    # "localForceArrayFlag":Z
    :cond_4
    move v6, v3

    .line 225
    .local v6, "localForceArrayFlag":Z
    if-ne v0, p3, :cond_5

    .line 226
    const/4 v1, 0x0

    .line 230
    .end local v6    # "localForceArrayFlag":Z
    .restart local v1    # "localForceArrayFlag":Z
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto/16 :goto_3

    .line 232
    .end local v1    # "localForceArrayFlag":Z
    :cond_5
    if-eqz p3, :cond_b

    if-eq p3, v4, :cond_a

    if-ne p3, v5, :cond_9

    .line 239
    .restart local v6    # "localForceArrayFlag":Z
    if-eqz v0, :cond_7

    if-ne v0, v4, :cond_6

    .line 245
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 246
    goto :goto_1

    .line 248
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_7
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 243
    nop

    .line 251
    :goto_1
    if-ne v0, v4, :cond_8

    const/4 v3, 0x1

    :cond_8
    move v1, v3

    .line 252
    .end local v6    # "localForceArrayFlag":Z
    .restart local v1    # "localForceArrayFlag":Z
    goto :goto_3

    .line 232
    .end local v1    # "localForceArrayFlag":Z
    :cond_9
    move v3, v6

    .line 268
    .restart local v3    # "localForceArrayFlag":Z
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    .end local v3    # "localForceArrayFlag":Z
    :cond_a
    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 236
    const/4 v1, 0x0

    .line 237
    .restart local v1    # "localForceArrayFlag":Z
    goto :goto_3

    .line 232
    .end local v1    # "localForceArrayFlag":Z
    :cond_b
    move v3, v6

    .line 254
    .restart local v3    # "localForceArrayFlag":Z
    if-eq v0, v4, :cond_d

    if-ne v0, v5, :cond_c

    .line 256
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 257
    goto :goto_2

    .line 262
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    :cond_d
    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 260
    nop

    .line 265
    :goto_2
    const/4 v1, 0x0

    .line 266
    .end local v3    # "localForceArrayFlag":Z
    .restart local v1    # "localForceArrayFlag":Z
    nop

    .line 275
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    array-length v3, p2

    if-ge v2, v3, :cond_e

    .line 276
    aget-object v3, p2, v2

    .line 277
    .local v3, "child":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getParameterClass(I)B

    move-result v4

    .line 278
    .local v4, "paramOperandClass":B
    invoke-direct {p0, v3, v4, v1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 275
    .end local v3    # "child":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v4    # "paramOperandClass":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 280
    .end local v2    # "i":I
    :cond_e
    return-void
.end method

.method private transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V
    .locals 6
    .param p1, "node"    # Lorg/apache/poi/ss/formula/ParseNode;
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .line 97
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 98
    .local v0, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 99
    .local v1, "children":[Lorg/apache/poi/ss/formula/ParseNode;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->isSimpleValueFunction(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v2

    .line 101
    .local v2, "isSimpleValueFunc":Z
    if-eqz v2, :cond_2

    .line 102
    const/16 v3, 0x40

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 103
    .local v3, "localForceArray":Z
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 104
    aget-object v5, v1, v4

    invoke-direct {p0, v5, p2, v3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    .end local v4    # "i":I
    :cond_1
    move-object v4, v0

    check-cast v4, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-direct {p0, v4, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->setSimpleValueFuncClass(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;BZ)V

    .line 107
    return-void

    .line 110
    .end local v3    # "localForceArray":Z
    :cond_2
    invoke-static {v0}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->isSingleArgSum(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 117
    :cond_3
    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-nez v3, :cond_9

    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    if-eqz v3, :cond_4

    goto :goto_2

    .line 133
    :cond_4
    instance-of v3, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v3, :cond_5

    .line 134
    move-object v3, v0

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-direct {p0, v3, v1, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformFunctionNode(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;[Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 135
    return-void

    .line 137
    :cond_5
    array-length v3, v1

    if-lez v3, :cond_7

    .line 138
    sget-object v3, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-ne v0, v3, :cond_6

    .line 140
    return-void

    .line 142
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Node should not have any children"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 147
    return-void

    .line 149
    :cond_8
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformClass(BBZ)B

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    .line 150
    return-void

    .line 127
    :cond_9
    :goto_2
    if-nez p2, :cond_a

    const/16 v3, 0x20

    goto :goto_3

    :cond_a
    move v3, p2

    .line 128
    .local v3, "localDesiredOperandClass":B
    :goto_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v5, v1

    if-ge v4, v5, :cond_b

    .line 129
    aget-object v5, v1, v4

    invoke-direct {p0, v5, v3, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 131
    .end local v4    # "i":I
    :cond_b
    return-void
.end method


# virtual methods
.method public transformFormula(Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 4
    .param p1, "rootNode"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 71
    iget v0, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 83
    .local v0, "rootNodeOperandClass":B
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete code - formula type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") not supported yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "rootNodeOperandClass":B
    :cond_1
    :goto_0
    move v0, v1

    .line 80
    .restart local v0    # "rootNodeOperandClass":B
    const/4 v0, 0x0

    .line 81
    goto :goto_1

    .line 71
    .end local v0    # "rootNodeOperandClass":B
    :cond_2
    move v0, v1

    .line 76
    .restart local v0    # "rootNodeOperandClass":B
    const/16 v0, 0x40

    .line 77
    goto :goto_1

    .line 73
    .end local v0    # "rootNodeOperandClass":B
    :cond_3
    const/16 v0, 0x20

    .line 74
    .restart local v0    # "rootNodeOperandClass":B
    nop

    .line 87
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 88
    return-void
.end method
