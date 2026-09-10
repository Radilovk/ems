.class final Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;
.super Ljava/lang/Object;
.source "SharedValueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/aggregates/SharedValueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedFormulaGroup"
.end annotation


# instance fields
.field private final _firstCell:Lorg/apache/poi/ss/util/CellReference;

.field private final _frAggs:[Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

.field private _numberOfFormulas:I

.field private final _sfr:Lorg/apache/poi/hssf/record/SharedFormulaRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/SharedFormulaRecord;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 3
    .param p1, "sfr"    # Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    .param p2, "firstCell"    # Lorg/apache/poi/ss/util/CellReference;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->isInRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_sfr:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    .line 65
    iput-object p2, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getLastColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getFirstColumn()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 67
    .local v0, "width":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getFirstRow()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 68
    .local v1, "height":I
    mul-int v2, v0, v1

    new-array v2, v2, [Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_frAggs:[Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 69
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_numberOfFormulas:I

    .line 70
    return-void

    .line 61
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First formula cell "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not shared formula range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;)Lorg/apache/poi/ss/util/CellReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;

    .line 48
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;)V
    .locals 4
    .param p1, "agg"    # Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 73
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_numberOfFormulas:I

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getRow()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getColumn()S

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shared formula coding error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getColumn()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getRow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_numberOfFormulas:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_frAggs:[Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 81
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_numberOfFormulas:I

    aput-object p1, v1, v0

    .line 82
    return-void

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Too many formula records for shared formula group"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSFR()Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_sfr:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 96
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_sfr:Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlinkSharedFormulas()V
    .locals 2

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_numberOfFormulas:I

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/SharedValueManager$SharedFormulaGroup;->_frAggs:[Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->unlinkSharedFormula()V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
