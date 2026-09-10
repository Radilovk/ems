.class final Lorg/apache/poi/ss/formula/functions/LookupUtils;
.super Ljava/lang/Object;
.source "LookupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;,
        Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    return-void
.end method

.method public static createColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1
    .param p0, "tableArray"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "relativeColumnIndex"    # I

    .prologue
    .line 133
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;I)V

    return-object v0
.end method

.method public static createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .locals 3
    .param p0, "lookupValue"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "matchExact"    # Z
    .param p2, "isMatchFunction"    # Z

    .prologue
    .line 642
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_0

    .line 646
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/NumberEval;)V

    .line 656
    .end local p0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v0

    .line 648
    .restart local p0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_1

    .line 650
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local p0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/StringEval;ZZ)V

    goto :goto_0

    .line 652
    .restart local p0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_2

    .line 653
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local p0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/NumberEval;)V

    goto :goto_0

    .line 655
    .restart local p0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_3

    .line 656
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .end local p0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/BoolEval;)V

    goto :goto_0

    .line 658
    .restart local p0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad lookup value type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1
    .param p0, "tableArray"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "relativeRowIndex"    # I

    .prologue
    .line 130
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;I)V

    return-object v0
.end method

.method public static createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 2
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/TwoDEval;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->isRow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createVector(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1
    .param p0, "re"    # Lorg/apache/poi/ss/formula/eval/RefEval;

    .prologue
    .line 149
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    return-object v0
.end method

.method private static findLastIndexInRunOfEqualValues(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;II)I
    .locals 2
    .param p0, "lookupComparer"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .param p1, "vector"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "firstFoundIndex"    # I
    .param p3, "maxIx"    # I

    .prologue
    .line 632
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 633
    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    add-int/lit8 v1, v0, -0x1

    .line 637
    :goto_1
    return v1

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_1
    add-int/lit8 v1, p3, -0x1

    goto :goto_1
.end method

.method private static handleMidValueTypeMismatch(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;I)I
    .locals 6
    .param p0, "lookupComparer"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .param p1, "vector"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "bsi"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;
    .param p3, "midIx"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 593
    move v2, p3

    .line 594
    .local v2, "newMid":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getHighIx()I

    move-result v1

    .line 597
    .local v1, "highIx":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 598
    if-ne v2, v1, :cond_2

    .line 601
    invoke-virtual {p2, p3, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    move v2, v3

    .line 623
    .end local v2    # "newMid":I
    :cond_1
    :goto_0
    return v2

    .line 604
    .restart local v2    # "newMid":I
    :cond_2
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v0

    .line 605
    .local v0, "cr":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_3

    .line 607
    invoke-virtual {p2, p3, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    move v2, v3

    .line 608
    goto :goto_0

    .line 612
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v4

    if-nez v4, :cond_0

    .line 616
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v4

    if-nez v4, :cond_1

    .line 622
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v4

    invoke-virtual {p2, v2, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    move v2, v3

    .line 623
    goto :goto_0
.end method

.method private static lookupIndexOfExactValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;)I
    .locals 3
    .param p0, "lookupComparer"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .param p1, "vector"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    .prologue
    .line 506
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v1

    .line 507
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 508
    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 507
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lookupIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Z)I
    .locals 4
    .param p0, "lookupValue"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "vector"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "isRangeLookup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v2, 0x0

    invoke-static {p0, p2, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v0

    .line 484
    .local v0, "lookupComparer":Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    if-eqz p2, :cond_0

    .line 485
    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->performBinarySearch(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;)I

    move-result v1

    .line 489
    .local v1, "result":I
    :goto_0
    if-gez v1, :cond_1

    .line 490
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 487
    .end local v1    # "result":I
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfExactValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_0

    .line 492
    :cond_1
    return v1
.end method

.method private static performBinarySearch(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;)I
    .locals 5
    .param p0, "vector"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p1, "lookupComparer"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    .prologue
    .line 561
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v4

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;-><init>(I)V

    .line 564
    .local v0, "bsi":Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getMidIx()I

    move-result v2

    .line 566
    .local v2, "midIx":I
    if-gez v2, :cond_1

    .line 567
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getLowIx()I

    move-result v4

    .line 579
    :goto_1
    return v4

    .line 569
    :cond_1
    invoke-interface {p0, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v1

    .line 570
    .local v1, "cr":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 571
    invoke-static {p1, p0, v0, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->handleMidValueTypeMismatch(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;I)I

    move-result v3

    .line 572
    .local v3, "newMidIx":I
    if-ltz v3, :cond_0

    .line 575
    move v2, v3

    .line 576
    invoke-interface {p0, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v1

    .line 578
    .end local v3    # "newMidIx":I
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 579
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getHighIx()I

    move-result v4

    invoke-static {p1, p0, v2, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->findLastIndexInRunOfEqualValues(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;II)I

    move-result v4

    goto :goto_1

    .line 581
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    goto :goto_0
.end method

.method public static resolveRangeLookupArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z
    .locals 12
    .param p0, "rangeLookupArg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 440
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 441
    .local v4, "valEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v7, v4, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v7, :cond_0

    .line 476
    .end local v4    # "valEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return v6

    .line 447
    .restart local v4    # "valEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v7, v4, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v7, :cond_1

    move-object v1, v4

    .line 449
    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 450
    .local v1, "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v6

    goto :goto_0

    .line 453
    .end local v1    # "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_1
    instance-of v7, v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v7, :cond_4

    .line 454
    check-cast v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local v4    # "valEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "stringValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_2

    .line 458
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v5

    throw v5

    .line 461
    :cond_2
    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/Countif;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 462
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0

    .line 469
    :cond_3
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v5

    throw v5

    .line 473
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v3    # "stringValue":Ljava/lang/String;
    .restart local v4    # "valEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    instance-of v7, v4, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v7, :cond_6

    move-object v2, v4

    .line 474
    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 476
    .local v2, "nve":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    const-wide/16 v8, 0x0

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-eqz v7, :cond_5

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1

    .line 478
    .end local v2    # "nve":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_6
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected eval type ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static resolveRowOrColIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 8
    .param p0, "rowColIndexArg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 380
    if-nez p0, :cond_0

    .line 381
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "argument must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 386
    :cond_0
    int-to-short v6, p2

    :try_start_0
    invoke-static {p0, p1, v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 392
    .local v5, "veRowColIndexArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v6, v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 393
    check-cast v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 394
    .local v3, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "strVal":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 396
    .local v0, "dVal":Ljava/lang/Double;
    if-nez v0, :cond_1

    .line 398
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidRef()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v6

    throw v6

    .line 387
    .end local v0    # "dVal":Ljava/lang/Double;
    .end local v3    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    .end local v4    # "strVal":Ljava/lang/String;
    .end local v5    # "veRowColIndexArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidRef()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v6

    throw v6

    .line 404
    .end local v1    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v5    # "veRowColIndexArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    invoke-static {v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v2

    .line 405
    .local v2, "oneBasedIndex":I
    const/4 v6, 0x1

    if-ge v2, v6, :cond_2

    .line 407
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v6

    throw v6

    .line 409
    :cond_2
    add-int/lit8 v6, v2, -0x1

    return v6
.end method

.method public static resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 3
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 419
    instance-of v1, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v1, :cond_0

    .line 420
    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 428
    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v0, "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    :goto_0
    return-object p0

    .line 423
    .end local v0    # "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 424
    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 428
    .restart local v0    # "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0, v2, v2, v2, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    goto :goto_0

    .line 430
    .end local v0    # "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_1
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v1

    throw v1
.end method
