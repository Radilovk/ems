.class public final Lorg/apache/poi/ss/formula/FormulaShifter;
.super Ljava/lang/Object;
.source "FormulaShifter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p5, :cond_1

    .line 76
    if-gt p3, p4, :cond_0

    .line 79
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

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstMovedIndex, lastMovedIndex out of order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "amountToMove must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .line 141
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaShifter$1;->$SwitchMap$org$apache$poi$ss$formula$FormulaShifter$ShiftMode:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToShiftMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported shift mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_mode:Lorg/apache/poi/ss/formula/FormulaShifter$ShiftMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method private adjustPtgDueToRowMove(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .line 154
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 155
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v0, :cond_0

    .line 157
    return-object v1

    .line 159
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    .line 160
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 162
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/RefPtg;
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_3

    .line 163
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 164
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 167
    return-object v1

    .line 169
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 171
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_6

    .line 172
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 173
    .local v0, "rpxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    if-gtz v2, :cond_5

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 178
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 176
    :cond_5
    :goto_0
    return-object v1

    .line 180
    .end local v0    # "rpxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_6
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    if-eqz v0, :cond_8

    .line 181
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    if-eq p2, v0, :cond_7

    .line 183
    return-object p1

    .line 185
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0

    .line 187
    :cond_8
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_a

    .line 188
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 189
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_externSheetIndex:I

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v3

    if-eq v2, v3, :cond_9

    .line 192
    return-object v1

    .line 194
    :cond_9
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 196
    .end local v0    # "aptg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_a
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_d

    .line 197
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 198
    .local v0, "apxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    if-gtz v2, :cond_c

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_sheetName:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    .line 203
    :cond_b
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1

    .line 201
    :cond_c
    :goto_1
    return-object v1

    .line 205
    .end local v0    # "apxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    :cond_d
    return-object v1
.end method

.method private adjustPtgDueToShiftMove(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4
    .param p1, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "updatedPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v1, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v1, :cond_1

    .line 211
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 212
    .local v1, "ref":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    if-ne v2, v3, :cond_0

    .line 213
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 214
    move-object v0, v1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_dstSheetIndex:I

    if-ne v2, v3, :cond_1

    .line 216
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_srcSheetIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->setExternSheetIndex(I)V

    .line 217
    move-object v0, v1

    .line 220
    .end local v1    # "ref":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4
    .param p0, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 378
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/RefErrorPtg;-><init>()V

    return-object v0

    .line 381
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_1

    .line 382
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    .line 383
    .local v0, "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/DeletedRef3DPtg;-><init>(I)V

    return-object v1

    .line 385
    .end local v0    # "rptg":Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v0, :cond_2

    .line 386
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;-><init>()V

    return-object v0

    .line 388
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_3

    .line 389
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    .line 390
    .local v0, "area3DPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/DeletedArea3DPtg;-><init>(I)V

    return-object v1

    .line 392
    .end local v0    # "area3DPtg":Lorg/apache/poi/ss/formula/ptg/Area3DPtg;
    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_4

    .line 393
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    .line 394
    .local v0, "pxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 396
    .end local v0    # "pxg":Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;
    :cond_4
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_5

    .line 397
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    .line 398
    .local v0, "pxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 401
    .end local v0    # "pxg":Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ref ptg class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForRowShift(ILjava/lang/String;III)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 7
    .param p0, "externSheetIndex"    # I
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "firstMovedRowIndex"    # I
    .param p3, "lastMovedRowIndex"    # I
    .param p4, "numberOfRowsToMove"    # I

    .line 104
    new-instance v6, Lorg/apache/poi/ss/formula/FormulaShifter;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(ILjava/lang/String;III)V

    return-object v6
.end method

.method public static createForSheetShift(II)Lorg/apache/poi/ss/formula/FormulaShifter;
    .locals 1
    .param p0, "srcSheetIndex"    # I
    .param p1, "dstSheetIndex"    # I

    .line 108
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaShifter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/FormulaShifter;-><init>(II)V

    return-object v0
.end method

.method private rowMoveAreaPtg(Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 8
    .param p1, "aptg"    # Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;

    .line 253
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    .line 254
    .local v0, "aFirstRow":I
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    .line 255
    .local v1, "aLastRow":I
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v2, v0, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v1, v2, :cond_0

    .line 258
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 259
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 260
    return-object p1

    .line 264
    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int v4, v2, v3

    .line 265
    .local v4, "destFirstRowIndex":I
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int/2addr v3, v5

    .line 267
    .local v3, "destLastRowIndex":I
    const/4 v6, 0x0

    if-ge v0, v2, :cond_3

    if-ge v5, v1, :cond_3

    .line 272
    if-ge v4, v0, :cond_1

    if-gt v0, v3, :cond_1

    .line 274
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 275
    return-object p1

    .line 276
    :cond_1
    if-gt v4, v1, :cond_2

    if-ge v1, v3, :cond_2

    .line 278
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 279
    return-object p1

    .line 283
    :cond_2
    return-object v6

    .line 285
    :cond_3
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v2, v0, :cond_8

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v0, v2, :cond_8

    .line 288
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    if-gez v5, :cond_4

    .line 290
    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 291
    return-object p1

    .line 293
    :cond_4
    if-le v4, v1, :cond_5

    .line 295
    return-object v6

    .line 297
    :cond_5
    add-int/2addr v5, v0

    .line 298
    .local v5, "newFirstRowIx":I
    if-ge v3, v1, :cond_6

    .line 301
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 302
    return-object p1

    .line 305
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 306
    .local v2, "areaRemainingTopRowIx":I
    if-le v4, v2, :cond_7

    .line 308
    move v5, v2

    .line 310
    :cond_7
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 311
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 312
    return-object p1

    .line 314
    .end local v2    # "areaRemainingTopRowIx":I
    .end local v5    # "newFirstRowIx":I
    :cond_8
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v2, v1, :cond_d

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v1, v5, :cond_d

    .line 317
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    if-lez v5, :cond_9

    .line 319
    add-int/2addr v5, v1

    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 320
    return-object p1

    .line 322
    :cond_9
    if-ge v3, v0, :cond_a

    .line 324
    return-object v6

    .line 326
    :cond_a
    add-int/2addr v5, v1

    .line 327
    .local v5, "newLastRowIx":I
    if-le v4, v0, :cond_b

    .line 330
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 331
    return-object p1

    .line 334
    :cond_b
    add-int/lit8 v2, v2, -0x1

    .line 335
    .local v2, "areaRemainingBottomRowIx":I
    if-ge v3, v2, :cond_c

    .line 337
    move v5, v2

    .line 339
    :cond_c
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 340
    invoke-virtual {p1, v5}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 341
    return-object p1

    .line 346
    .end local v2    # "areaRemainingBottomRowIx":I
    .end local v5    # "newLastRowIx":I
    :cond_d
    if-lt v3, v0, :cond_13

    if-ge v1, v4, :cond_e

    goto :goto_0

    .line 351
    :cond_e
    if-gt v4, v0, :cond_f

    if-gt v1, v3, :cond_f

    .line 353
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    return-object v2

    .line 356
    :cond_f
    if-gt v0, v4, :cond_10

    if-gt v3, v1, :cond_10

    .line 358
    return-object v6

    .line 361
    :cond_10
    if-ge v4, v0, :cond_11

    if-gt v0, v3, :cond_11

    .line 364
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setFirstRow(I)V

    .line 365
    return-object p1

    .line 367
    :cond_11
    if-gt v4, v1, :cond_12

    if-ge v1, v3, :cond_12

    .line 370
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->setLastRow(I)V

    .line 371
    return-object p1

    .line 373
    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Situation not covered: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_13
    :goto_0
    return-object v6
.end method

.method private rowMoveRefPtg(Lorg/apache/poi/ss/formula/ptg/RefPtgBase;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 7
    .param p1, "rptg"    # Lorg/apache/poi/ss/formula/ptg/RefPtgBase;

    .line 224
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v0

    .line 225
    .local v0, "refRow":I
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    if-gt v1, v0, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    if-gt v0, v1, :cond_0

    .line 228
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->setRow(I)V

    .line 229
    return-object p1

    .line 233
    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    add-int/2addr v1, v2

    .line 234
    .local v1, "destFirstRowIndex":I
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    add-int/2addr v3, v2

    .line 239
    .local v3, "destLastRowIndex":I
    if-lt v3, v0, :cond_3

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    if-gt v1, v0, :cond_2

    if-gt v0, v3, :cond_2

    .line 246
    invoke-static {p1}, Lorg/apache/poi/ss/formula/FormulaShifter;->createDeletedRef(Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    return-object v2

    .line 248
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Situation not covered: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_firstMovedIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_lastMovedIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/apache/poi/ss/formula/FormulaShifter;->_amountToMove:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_3
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z
    .locals 3
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "currentExternSheetIx"    # I

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "refsWereChanged":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 131
    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustPtg(Lorg/apache/poi/ss/formula/ptg/Ptg;I)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 132
    .local v2, "newPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eqz v2, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 134
    aput-object v2, p1, v1

    .line 130
    .end local v2    # "newPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
