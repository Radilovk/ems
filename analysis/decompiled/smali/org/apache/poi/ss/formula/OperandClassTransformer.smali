.class final Lorg/apache/poi/ss/formula/OperandClassTransformer;
.super Ljava/lang/Object;
.source "OperandClassTransformer.java"


# instance fields
.field private final _formulaType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "formulaType"    # I

    .prologue
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

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x0

    .line 161
    instance-of v4, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v4, :cond_0

    move-object v0, p0

    .line 162
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    .line 163
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v4

    if-eq v4, v5, :cond_1

    .line 174
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    :cond_0
    :goto_0
    return v3

    .line 166
    .restart local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getNumberOfOperands()I

    move-result v2

    .line 167
    .local v2, "numberOfOperands":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 168
    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getParameterClass(I)B

    move-result v4

    if-ne v4, v5, :cond_0

    .line 167
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 172
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isSingleArgSum(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z
    .locals 2
    .param p0, "token"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 153
    instance-of v1, p0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 154
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 155
    .local v0, "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v1

    .line 157
    .end local v0    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSimpleValueFuncClass(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;BZ)V
    .locals 1
    .param p1, "afp"    # Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .prologue
    const/16 v0, 0x40

    .line 285
    if-nez p3, :cond_0

    if-ne p2, v0, :cond_1

    .line 286
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_0
.end method

.method private transformClass(BBZ)B
    .locals 3
    .param p1, "currentOperandClass"    # B
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .prologue
    .line 179
    sparse-switch p2, :sswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected operand class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :sswitch_0
    if-nez p3, :cond_1

    .line 182
    const/16 p1, 0x20

    .line 191
    .end local p1    # "currentOperandClass":B
    :cond_0
    :goto_0
    return p1

    .line 186
    .restart local p1    # "currentOperandClass":B
    :cond_1
    :sswitch_1
    const/16 p1, 0x40

    goto :goto_0

    .line 188
    :sswitch_2
    if-eqz p3, :cond_0

    .line 191
    const/4 p1, 0x0

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x20 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method private transformFunctionNode(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;[Lorg/apache/poi/ss/formula/ParseNode;BZ)V
    .locals 8
    .param p1, "afp"    # Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .param p2, "children"    # [Lorg/apache/poi/ss/formula/ParseNode;
    .param p3, "desiredOperandClass"    # B
    .param p4, "callerForceArrayFlag"    # Z

    .prologue
    const/16 v6, 0x20

    const/4 v3, 0x0

    const/16 v5, 0x40

    .line 200
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v1

    .line 202
    .local v1, "defaultReturnOperandClass":B
    if-eqz p4, :cond_1

    .line 203
    sparse-switch v1, :sswitch_data_0

    .line 221
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected operand class ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :sswitch_0
    if-nez p3, :cond_0

    .line 206
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 210
    :goto_0
    const/4 v3, 0x0

    .line 275
    .local v3, "localForceArrayFlag":Z
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, p2

    if-ge v2, v5, :cond_4

    .line 276
    aget-object v0, p2, v2

    .line 277
    .local v0, "child":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getParameterClass(I)B

    move-result v4

    .line 278
    .local v4, "paramOperandClass":B
    invoke-direct {p0, v0, v4, v3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 275
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    .end local v0    # "child":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v2    # "i":I
    .end local v3    # "localForceArrayFlag":Z
    .end local v4    # "paramOperandClass":B
    :cond_0
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_0

    .line 213
    :sswitch_1
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 214
    const/4 v3, 0x0

    .line 215
    .restart local v3    # "localForceArrayFlag":Z
    goto :goto_1

    .line 217
    .end local v3    # "localForceArrayFlag":Z
    :sswitch_2
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 218
    const/4 v3, 0x1

    .line 219
    .restart local v3    # "localForceArrayFlag":Z
    goto :goto_1

    .line 225
    .end local v3    # "localForceArrayFlag":Z
    :cond_1
    if-ne v1, p3, :cond_2

    .line 226
    const/4 v3, 0x0

    .line 230
    .restart local v3    # "localForceArrayFlag":Z
    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_1

    .line 232
    .end local v3    # "localForceArrayFlag":Z
    :cond_2
    sparse-switch p3, :sswitch_data_1

    .line 268
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected operand class ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    :sswitch_3
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 236
    const/4 v3, 0x0

    .line 237
    .restart local v3    # "localForceArrayFlag":Z
    goto :goto_1

    .line 239
    .end local v3    # "localForceArrayFlag":Z
    :sswitch_4
    sparse-switch v1, :sswitch_data_2

    .line 248
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected operand class ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 241
    :sswitch_5
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 251
    :goto_3
    if-ne v1, v6, :cond_3

    const/4 v3, 0x1

    .line 252
    .restart local v3    # "localForceArrayFlag":Z
    :cond_3
    goto :goto_1

    .line 245
    .end local v3    # "localForceArrayFlag":Z
    :sswitch_6
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_3

    .line 254
    :sswitch_7
    sparse-switch v1, :sswitch_data_3

    .line 262
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected operand class ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    :sswitch_8
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    .line 265
    :goto_4
    const/4 v3, 0x0

    .line 266
    .restart local v3    # "localForceArrayFlag":Z
    goto/16 :goto_1

    .line 259
    .end local v3    # "localForceArrayFlag":Z
    :sswitch_9
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->setClass(B)V

    goto :goto_4

    .line 280
    .restart local v2    # "i":I
    .restart local v3    # "localForceArrayFlag":Z
    :cond_4
    return-void

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
    .end sparse-switch

    .line 232
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
    .end sparse-switch

    .line 239
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_5
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 254
    :sswitch_data_3
    .sparse-switch
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method private transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V
    .locals 8
    .param p1, "node"    # Lorg/apache/poi/ss/formula/ParseNode;
    .param p2, "desiredOperandClass"    # B
    .param p3, "callerForceArrayFlag"    # Z

    .prologue
    .line 97
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 98
    .local v5, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 99
    .local v0, "children":[Lorg/apache/poi/ss/formula/ParseNode;
    invoke-static {v5}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->isSimpleValueFunction(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v2

    .line 101
    .local v2, "isSimpleValueFunc":Z
    if-eqz v2, :cond_3

    .line 102
    const/16 v6, 0x40

    if-ne p2, v6, :cond_0

    const/4 v4, 0x1

    .line 103
    .local v4, "localForceArray":Z
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 104
    aget-object v6, v0, v1

    invoke-direct {p0, v6, p2, v4}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    .end local v1    # "i":I
    .end local v4    # "localForceArray":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v4    # "localForceArray":Z
    :cond_1
    move-object v6, v5

    .line 106
    check-cast v6, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-direct {p0, v6, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->setSimpleValueFuncClass(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;BZ)V

    .line 150
    .end local v1    # "i":I
    .end local v4    # "localForceArray":Z
    :cond_2
    :goto_2
    return-void

    .line 110
    :cond_3
    invoke-static {v5}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->isSingleArgSum(Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    sget-object v5, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 117
    :cond_4
    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-nez v6, :cond_5

    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    if-nez v6, :cond_5

    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v6, :cond_5

    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-nez v6, :cond_5

    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/UnionPtg;

    if-eqz v6, :cond_7

    .line 127
    :cond_5
    if-nez p2, :cond_6

    const/16 v3, 0x20

    .line 128
    .local v3, "localDesiredOperandClass":B
    :goto_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 129
    aget-object v6, v0, v1

    invoke-direct {p0, v6, v3, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1    # "i":I
    .end local v3    # "localDesiredOperandClass":B
    :cond_6
    move v3, p2

    .line 127
    goto :goto_3

    .line 133
    :cond_7
    instance-of v6, v5, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v6, :cond_8

    move-object v6, v5

    .line 134
    check-cast v6, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-direct {p0, v6, v0, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformFunctionNode(Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;[Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    goto :goto_2

    .line 137
    :cond_8
    array-length v6, v0

    if-lez v6, :cond_9

    .line 138
    sget-object v6, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eq v5, v6, :cond_2

    .line 142
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Node should not have any children"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    :cond_9
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Ptg;->isBaseToken()Z

    move-result v6

    if-nez v6, :cond_2

    .line 149
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v6

    invoke-direct {p0, v6, p2, p3}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformClass(BBZ)B

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/formula/ptg/Ptg;->setClass(B)V

    goto :goto_2
.end method


# virtual methods
.method public transformFormula(Lorg/apache/poi/ss/formula/ParseNode;)V
    .locals 4
    .param p1, "rootNode"    # Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    .line 71
    iget v1, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:I

    packed-switch v1, :pswitch_data_0

    .line 83
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete code - formula type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/ss/formula/OperandClassTransformer;->_formulaType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not supported yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :pswitch_1
    const/16 v0, 0x20

    .line 87
    .local v0, "rootNodeOperandClass":B
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformNode(Lorg/apache/poi/ss/formula/ParseNode;BZ)V

    .line 88
    return-void

    .line 76
    .end local v0    # "rootNodeOperandClass":B
    :pswitch_2
    const/16 v0, 0x40

    .line 77
    .restart local v0    # "rootNodeOperandClass":B
    goto :goto_0

    .line 80
    .end local v0    # "rootNodeOperandClass":B
    :pswitch_3
    const/4 v0, 0x0

    .line 81
    .restart local v0    # "rootNodeOperandClass":B
    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
