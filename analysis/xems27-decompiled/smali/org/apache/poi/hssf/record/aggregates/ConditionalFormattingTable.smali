.class public final Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "ConditionalFormattingTable.java"


# instance fields
.field private final _cfHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 3
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    if-ne v1, v2, :cond_0

    .line 49
    invoke-static {p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->createCFAggregate(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    .line 52
    return-void
.end method

.method private checkIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 84
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 88
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified CF index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is outside the allowable range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)I
    .locals 1
    .param p1, "cfAggregate"    # Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public get(I)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 1
    .param p1, "index"    # I

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->checkIndex(I)V

    .line 75
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    return-object v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 79
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->checkIndex(I)V

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public size()I
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V
    .locals 4
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p2, "externSheetIndex"    # I

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    .line 93
    .local v1, "subAgg":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)Z

    move-result v2

    .line 94
    .local v2, "shouldKeep":Z
    if-nez v2, :cond_0

    .line 95
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    add-int/lit8 v0, v0, -0x1

    .line 91
    .end local v1    # "subAgg":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .end local v2    # "shouldKeep":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->_cfHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    .line 57
    .local v1, "subAgg":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 55
    .end local v1    # "subAgg":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
