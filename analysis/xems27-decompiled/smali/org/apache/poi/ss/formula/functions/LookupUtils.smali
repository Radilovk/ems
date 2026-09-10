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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    return-void
.end method

.method public static createColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1
    .param p0, "tableArray"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "relativeColumnIndex"    # I

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

    .line 642
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_0

    .line 646
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/NumberEval;)V

    return-object v0

    .line 648
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_1

    .line 650
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$StringLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/StringEval;ZZ)V

    return-object v0

    .line 652
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_2

    .line 653
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/NumberEval;)V

    return-object v0

    .line 655
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_3

    .line 656
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;-><init>(Lorg/apache/poi/ss/formula/eval/BoolEval;)V

    return-object v0

    .line 658
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad lookup value type ("

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

.method public static createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1
    .param p0, "tableArray"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "relativeRowIndex"    # I

    .line 130
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;I)V

    return-object v0
.end method

.method public static createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 2
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/TwoDEval;

    .line 139
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->isRow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v0

    return-object v0

    .line 145
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createVector(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1
    .param p0, "re"    # Lorg/apache/poi/ss/formula/eval/RefEval;

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

    return v1

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v0, p3, -0x1

    return v0
.end method

.method private static handleMidValueTypeMismatch(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;I)I
    .locals 6
    .param p0, "lookupComparer"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .param p1, "vector"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "bsi"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;
    .param p3, "midIx"    # I

    .line 593
    move v0, p3

    .line 594
    .local v0, "newMid":I
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getHighIx()I

    move-result v1

    .line 597
    .local v1, "highIx":I
    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 598
    const/4 v3, -0x1

    if-ne v0, v1, :cond_0

    .line 601
    invoke-virtual {p2, p3, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    .line 602
    return v3

    .line 604
    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v4

    .line 605
    .local v4, "cr":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v1, -0x1

    if-ne v0, v5, :cond_1

    .line 607
    invoke-virtual {p2, p3, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    .line 608
    return v3

    .line 612
    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    goto :goto_0

    .line 616
    :cond_2
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 617
    return v0

    .line 622
    :cond_3
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v2

    invoke-virtual {p2, v0, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    .line 623
    return v3
.end method

.method private static lookupIndexOfExactValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;)I
    .locals 3
    .param p0, "lookupComparer"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .param p1, "vector"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    .line 506
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v0

    .line 507
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 508
    invoke-interface {p1, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    return v1

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
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

    .line 482
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v0

    .line 484
    .local v0, "lookupComparer":Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    if-eqz p2, :cond_0

    .line 485
    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->performBinarySearch(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;)I

    move-result v1

    .local v1, "result":I
    goto :goto_0

    .line 487
    .end local v1    # "result":I
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfExactValue(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;)I

    move-result v1

    .line 489
    .restart local v1    # "result":I
    :goto_0
    if-ltz v1, :cond_1

    .line 492
    return v1

    .line 490
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method

.method private static performBinarySearch(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;)I
    .locals 5
    .param p0, "vector"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p1, "lookupComparer"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    .line 561
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;-><init>(I)V

    .line 564
    .local v0, "bsi":Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getMidIx()I

    move-result v1

    .line 566
    .local v1, "midIx":I
    if-gez v1, :cond_0

    .line 567
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getLowIx()I

    move-result v2

    return v2

    .line 569
    :cond_0
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v2

    .line 570
    .local v2, "cr":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    invoke-static {p1, p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->handleMidValueTypeMismatch(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;I)I

    move-result v3

    .line 572
    .local v3, "newMidIx":I
    if-gez v3, :cond_1

    .line 573
    goto :goto_0

    .line 575
    :cond_1
    move v1, v3

    .line 576
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v2

    .line 578
    .end local v3    # "newMidIx":I
    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 579
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->getHighIx()I

    move-result v3

    invoke-static {p1, p0, v1, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->findLastIndexInRunOfEqualValues(Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;II)I

    move-result v3

    return v3

    .line 581
    :cond_3
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->narrowSearch(IZ)V

    .line 582
    .end local v1    # "midIx":I
    .end local v2    # "cr":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    goto :goto_0
.end method

.method public static resolveRangeLookupArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z
    .locals 9
    .param p0, "rangeLookupArg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 440
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 441
    .local v0, "valEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 445
    return v2

    .line 447
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v1, :cond_1

    .line 449
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 450
    .local v1, "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    return v2

    .line 453
    .end local v1    # "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 454
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "stringValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_3

    .line 461
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Countif;->parseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 462
    .local v2, "b":Ljava/lang/Boolean;
    if-eqz v2, :cond_2

    .line 464
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 469
    :cond_2
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v3

    throw v3

    .line 458
    .end local v2    # "b":Ljava/lang/Boolean;
    :cond_3
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v2

    throw v2

    .line 473
    .end local v1    # "stringValue":Ljava/lang/String;
    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v1, :cond_6

    .line 474
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 476
    .local v1, "nve":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    const-wide/16 v4, 0x0

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    .line 478
    .end local v1    # "nve":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected eval type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolveRowOrColIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 5
    .param p0, "rowColIndexArg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 380
    if-eqz p0, :cond_3

    .line 386
    int-to-short v0, p2

    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .local v0, "veRowColIndexArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 392
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_1

    .line 393
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 394
    .local v1, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "strVal":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 396
    .local v3, "dVal":Ljava/lang/Double;
    if-eqz v3, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidRef()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v4

    throw v4

    .line 404
    .end local v1    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    .end local v2    # "strVal":Ljava/lang/String;
    .end local v3    # "dVal":Ljava/lang/Double;
    :cond_1
    :goto_0
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    .line 405
    .local v1, "oneBasedIndex":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 409
    add-int/lit8 v2, v1, -0x1

    return v2

    .line 407
    :cond_2
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v2

    throw v2

    .line 387
    .end local v0    # "veRowColIndexArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "oneBasedIndex":I
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 389
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "veRowColIndexArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidRef()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v2

    throw v2

    .line 381
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .end local v1    # "veRowColIndexArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 419
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_0

    .line 420
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    return-object v0

    .line 423
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 424
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 428
    .local v0, "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v1

    return-object v1

    .line 430
    .end local v0    # "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_1
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0
.end method
