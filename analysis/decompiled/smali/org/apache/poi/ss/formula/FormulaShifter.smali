.class public final Lorg/apache/poi/ss/formula/FormulaShifter;
.super Ljava/lang/Object;
.source "FormulaShifter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaShifter$1;,
        Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;
    }
.end annotation


# instance fields
.field private final _amountToMove:I

.field private final _dstSheetIndex:I

.field private final _externSheetIndex:I

.field private final _firstMovedIndex:I

.field private final _lastMovedIndex:I

.field private final _mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

.field private final _sheetName:Ljava/lang/String;

.field private final _srcSheetIndex:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "srcSheetIndex"    # I
    .param p2, "dstSheetIndex"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    .line 98
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    .line 99
    iput p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    .line 100
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->Sheet:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    .line 101
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;III)V
    .locals 2
    .param p1, "externSheetIndex"    # I
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "firstMovedIndex"    # I
    .param p4, "lastMovedIndex"    # I
    .param p5, "amountToMove"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p5, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "amountToMove must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    if-le p3, p4, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstMovedIndex, lastMovedIndex out of order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    .line 80
    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    .line 81
    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    .line 82
    iput p4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    .line 83
    iput p5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    .line 84
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->Row:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    .line 87
    return-void
.end method

.method private adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .prologue
    .line 141
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$1;->$SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported shift mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToShiftMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 7
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .prologue
    const/4 v4, 0x0

    .line 154
    instance-of v5, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v5, :cond_2

    .line 155
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v5, :cond_1

    move-object p1, v4

    .line 205
    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    move-object v2, p1

    .line 159
    check-cast v2, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    .line 160
    .local v2, "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto :goto_0

    .line 162
    .end local v2    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    :cond_2
    instance-of v5, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 163
    check-cast v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 164
    .local v2, "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v6

    if-eq v5, v6, :cond_3

    move-object p1, v4

    .line 167
    goto :goto_0

    .line 169
    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto :goto_0

    .line 171
    .end local v2    # "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_4
    instance-of v5, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v5, :cond_7

    move-object v3, p1

    .line 172
    check-cast v3, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 173
    .local v3, "rpxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v5

    if-gtz v5, :cond_5

    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    move-object p1, v4

    .line 176
    goto :goto_0

    .line 178
    :cond_6
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto :goto_0

    .line 180
    .end local v3    # "rpxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_7
    instance-of v5, p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz v5, :cond_8

    .line 181
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-ne p2, v4, :cond_0

    .line 185
    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    .end local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto :goto_0

    .line 187
    .restart local p1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_8
    instance-of v5, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v5, :cond_a

    move-object v0, p1

    .line 188
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 189
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v6

    if-eq v5, v6, :cond_9

    move-object p1, v4

    .line 192
    goto :goto_0

    .line 194
    :cond_9
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto :goto_0

    .line 196
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_a
    instance-of v5, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v5, :cond_d

    move-object v1, p1

    .line 197
    check-cast v1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 198
    .local v1, "apxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v5

    if-gtz v5, :cond_b

    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    move-object p1, v4

    .line 201
    goto :goto_0

    .line 203
    :cond_c
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto/16 :goto_0

    .end local v1    # "apxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    :cond_d
    move-object p1, v4

    .line 205
    goto/16 :goto_0
.end method

.method private adjustPtgDueToShiftMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "updatedPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v2, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 211
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 212
    .local v0, "ref":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    if-ne v2, v3, :cond_1

    .line 213
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 214
    move-object v1, v0

    .line 220
    .end local v0    # "ref":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_0
    :goto_0
    return-object v1

    .line 215
    .restart local v0    # "ref":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-ne v2, v3, :cond_0

    .line 216
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 217
    move-object v1, v0

    goto :goto_0
.end method

.method private static createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 6
    .param p0, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 378
    instance-of v3, p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v3, :cond_0

    .line 379
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {v3}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>()V

    .line 398
    :goto_0
    return-object v3

    .line 381
    :cond_0
    instance-of v3, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 382
    check-cast v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 383
    .local v2, "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;-><init>(I)V

    goto :goto_0

    .line 385
    .end local v2    # "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    instance-of v3, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v3, :cond_2

    .line 386
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-direct {v3}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;-><init>()V

    goto :goto_0

    .line 388
    :cond_2
    instance-of v3, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 389
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 390
    .local v0, "area3DPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;-><init>(I)V

    goto :goto_0

    .line 392
    .end local v0    # "area3DPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_3
    instance-of v3, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v3, :cond_4

    move-object v1, p0

    .line 393
    check-cast v1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 394
    .local v1, "pxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 396
    .end local v1    # "pxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_4
    instance-of v3, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v3, :cond_5

    move-object v1, p0

    .line 397
    check-cast v1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 398
    .local v1, "pxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 401
    .end local v1    # "pxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected ref ptg class ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createForRowShift(ILjava/lang/String;III)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 6
    .param p0, "externSheetIndex"    # I
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "firstMovedRowIndex"    # I
    .param p3, "lastMovedRowIndex"    # I
    .param p4, "numberOfRowsToMove"    # I

    .prologue
    .line 104
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;III)V

    return-object v0
.end method

.method public static createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 1
    .param p0, "srcSheetIndex"    # I
    .param p1, "dstSheetIndex"    # I

    .prologue
    .line 108
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(II)V

    return-object v0
.end method

.method private rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 11
    .param p1, "aptg"    # Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;

    .prologue
    const/4 v8, 0x0

    .line 253
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    .line 254
    .local v0, "aFirstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    .line 255
    .local v1, "aLastRow":I
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v9, v0, :cond_0

    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v1, v9, :cond_0

    .line 258
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v8, v0

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 259
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v8, v1

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 371
    .end local p1    # "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
    :goto_0
    return-object p1

    .line 264
    .restart local p1    # "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;
    :cond_0
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iget v10, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v4, v9, v10

    .line 265
    .local v4, "destFirstRowIndex":I
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    iget v10, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v5, v9, v10

    .line 267
    .local v5, "destLastRowIndex":I
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-ge v0, v9, :cond_3

    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-ge v9, v1, :cond_3

    .line 272
    if-ge v4, v0, :cond_1

    if-gt v0, v5, :cond_1

    .line 274
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    goto :goto_0

    .line 276
    :cond_1
    if-gt v4, v1, :cond_2

    if-ge v1, v5, :cond_2

    .line 278
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    goto :goto_0

    :cond_2
    move-object p1, v8

    .line 283
    goto :goto_0

    .line 285
    :cond_3
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v9, v0, :cond_8

    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v0, v9, :cond_8

    .line 288
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    if-gez v9, :cond_4

    .line 290
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v8, v0

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    goto :goto_0

    .line 293
    :cond_4
    if-le v4, v1, :cond_5

    move-object p1, v8

    .line 295
    goto :goto_0

    .line 297
    :cond_5
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v6, v0, v8

    .line 298
    .local v6, "newFirstRowIx":I
    if-ge v5, v1, :cond_6

    .line 301
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    goto :goto_0

    .line 305
    :cond_6
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int/lit8 v3, v8, 0x1

    .line 306
    .local v3, "areaRemainingTopRowIx":I
    if-le v4, v3, :cond_7

    .line 308
    move v6, v3

    .line 310
    :cond_7
    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 311
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    goto :goto_0

    .line 314
    .end local v3    # "areaRemainingTopRowIx":I
    .end local v6    # "newFirstRowIx":I
    :cond_8
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v9, v1, :cond_d

    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v1, v9, :cond_d

    .line 317
    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    if-lez v9, :cond_9

    .line 319
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v8, v1

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    goto :goto_0

    .line 322
    :cond_9
    if-ge v5, v0, :cond_a

    move-object p1, v8

    .line 324
    goto :goto_0

    .line 326
    :cond_a
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v7, v1, v8

    .line 327
    .local v7, "newLastRowIx":I
    if-le v4, v0, :cond_b

    .line 330
    invoke-virtual {p1, v7}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    goto :goto_0

    .line 334
    :cond_b
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    add-int/lit8 v2, v8, -0x1

    .line 335
    .local v2, "areaRemainingBottomRowIx":I
    if-ge v5, v2, :cond_c

    .line 337
    move v7, v2

    .line 339
    :cond_c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 340
    invoke-virtual {p1, v7}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    goto/16 :goto_0

    .line 346
    .end local v2    # "areaRemainingBottomRowIx":I
    .end local v7    # "newLastRowIx":I
    :cond_d
    if-lt v5, v0, :cond_e

    if-ge v1, v4, :cond_f

    :cond_e
    move-object p1, v8

    .line 348
    goto/16 :goto_0

    .line 351
    :cond_f
    if-gt v4, v0, :cond_10

    if-gt v1, v5, :cond_10

    .line 353
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto/16 :goto_0

    .line 356
    :cond_10
    if-gt v0, v4, :cond_11

    if-gt v5, v1, :cond_11

    move-object p1, v8

    .line 358
    goto/16 :goto_0

    .line 361
    :cond_11
    if-ge v4, v0, :cond_12

    if-gt v0, v5, :cond_12

    .line 364
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    goto/16 :goto_0

    .line 367
    :cond_12
    if-gt v4, v1, :cond_13

    if-ge v1, v5, :cond_13

    .line 370
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {p1, v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    goto/16 :goto_0

    .line 373
    :cond_13
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Situation not covered: ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 6
    .param p1, "rptg"    # Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    .prologue
    .line 224
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v2

    .line 225
    .local v2, "refRow":I
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v3, v2, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v2, v3, :cond_0

    .line 228
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    .line 246
    .end local p1    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
    :goto_0
    return-object p1

    .line 233
    .restart local p1    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtgBase;
    :cond_0
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v0, v3, v4

    .line 234
    .local v0, "destFirstRowIndex":I
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v1, v3, v4

    .line 239
    .local v1, "destLastRowIndex":I
    if-lt v1, v2, :cond_1

    if-ge v2, v0, :cond_2

    .line 241
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 244
    :cond_2
    if-gt v0, v2, :cond_3

    if-gt v2, v1, :cond_3

    .line 246
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto :goto_0

    .line 248
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Situation not covered: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z
    .locals 4
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "refsWereChanged":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 131
    aget-object v3, p1, v0

    invoke-direct {p0, v3, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 132
    .local v1, "newPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eqz v1, :cond_0

    .line 133
    const/4 v2, 0x1

    .line 134
    aput-object v1, p1, v0

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "newPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 118
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
