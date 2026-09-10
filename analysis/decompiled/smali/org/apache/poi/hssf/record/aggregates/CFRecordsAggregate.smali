.class public final Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "CFRecordsAggregate.java"


# static fields
.field private static final MAX_97_2003_CONDTIONAL_FORMAT_RULES:I = 0x3

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/CFRuleRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/record/CFHeaderRecord;[Lorg/apache/poi/hssf/record/CFRuleRecord;)V
    .locals 6
    .param p1, "pHeader"    # Lorg/apache/poi/hssf/record/CFHeaderRecord;
    .param p2, "pRules"    # [Lorg/apache/poi/hssf/record/CFRuleRecord;

    .prologue
    const/4 v5, 0x3

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "header must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rules must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    array-length v1, p2

    if-le v1, v5, :cond_2

    .line 61
    sget-object v1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Excel versions before 2007 require that No more than 3 rules may be specified, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " were found,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " this file will cause problems with old Excel versions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 66
    :cond_2
    array-length v1, p2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->getNumberOfConditionalFormats()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Mismatch number of rules"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_3
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 72
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_4
    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleRecord;)V
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rules"    # [Lorg/apache/poi/hssf/record/CFRuleRecord;

    .prologue
    .line 77
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    array-length v1, p2

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderRecord;[Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    .line 78
    return-void
.end method

.method private checkRuleIndex(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 125
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad rule record index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") nRules="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    return-void
.end method

.method public static createCFAggregate(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 9
    .param p0, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    const/16 v8, 0x1b0

    .line 86
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    .line 87
    .local v3, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v5

    if-eq v5, v8, :cond_0

    .line 88
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "next record sid was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " instead of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v0, v3

    .line 92
    check-cast v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    .line 93
    .local v0, "header":Lorg/apache/poi/hssf/record/CFHeaderRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->getNumberOfConditionalFormats()I

    move-result v2

    .line 95
    .local v2, "nRules":I
    new-array v4, v2, [Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 96
    .local v4, "rules":[Lorg/apache/poi/hssf/record/CFRuleRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 97
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/CFRuleRecord;

    aput-object v5, v4, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v5, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-direct {v5, v0, v4}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderRecord;[Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v5
.end method

.method private static shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 12
    .param p0, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p1, "cra"    # Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "currentExternSheetIx"    # I

    .prologue
    const/4 v5, 0x0

    .line 233
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(IIIIZZZZ)V

    .line 234
    .local v0, "aptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    const/4 v1, 0x1

    new-array v11, v1, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    aput-object v0, v11, v5

    .line 236
    .local v11, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p0, v11, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    .end local p1    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    :goto_0
    return-object p1

    .line 239
    .restart local p1    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_0
    aget-object v10, v11, v5

    .line 240
    .local v10, "ptg0":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v1, v10, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz v1, :cond_1

    move-object v9, v10

    .line 241
    check-cast v9, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    .line 242
    .local v9, "bptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    .end local p1    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstRow()I

    move-result v1

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastRow()I

    move-result v2

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getFirstColumn()I

    move-result v3

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;->getLastColumn()I

    move-result v4

    invoke-direct {p1, v1, v2, v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    goto :goto_0

    .line 244
    .end local v9    # "bptg":Lorg/apache/poi/ss/formula/ptg/AreaPtg;
    .restart local p1    # "cra":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    instance-of v1, v10, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-eqz v1, :cond_2

    .line 245
    const/4 p1, 0x0

    goto :goto_0

    .line 247
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected shifted ptg class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/hssf/record/CFRuleRecord;)V
    .locals 3
    .param p1, "r"    # Lorg/apache/poi/hssf/record/CFRuleRecord;

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 146
    sget-object v0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    const-string v2, "Excel versions before 2007 cannot cope with any more than 3 - this file will cause problems with old Excel versions"

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->setNumberOfConditionalFormats(I)V

    .line 152
    return-void
.end method

.method public cloneCFAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 110
    .local v1, "newRecs":[Lorg/apache/poi/hssf/record/CFRuleRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getRule(I)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/CFRuleRecord;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/CFRuleRecord;

    aput-object v2, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {v3, v2, v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>(Lorg/apache/poi/hssf/record/CFHeaderRecord;[Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v3
.end method

.method public getHeader()Lorg/apache/poi/hssf/record/CFHeaderRecord;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    return-object v0
.end method

.method public getNumberOfRules()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRule(I)Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleIndex(I)V

    .line 132
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/CFRuleRecord;

    return-object v0
.end method

.method public setRule(ILorg/apache/poi/hssf/record/CFRuleRecord;)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "r"    # Lorg/apache/poi/hssf/record/CFRuleRecord;

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->checkRuleIndex(I)V

    .line 139
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "[CF]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 171
    iget-object v3, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 172
    .local v1, "cfRule":Lorg/apache/poi/hssf/record/CFRuleRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "cfRule":Lorg/apache/poi/hssf/record/CFRuleRecord;
    :cond_1
    const-string v3, "[/CF]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)Z
    .locals 11
    .param p1, "shifter"    # Lorg/apache/poi/ss/formula/FormulaShifter;
    .param p2, "currentExternSheetIx"    # I

    .prologue
    .line 190
    iget-object v10, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-virtual {v10}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 191
    .local v0, "cellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    const/4 v1, 0x0

    .line 192
    .local v1, "changed":Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v9, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/util/CellRangeAddress;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v0

    if-ge v4, v10, :cond_2

    .line 194
    aget-object v3, v0, v4

    .line 195
    .local v3, "craOld":Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {p1, v3, p2}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    .line 196
    .local v2, "craNew":Lorg/apache/poi/ss/util/CellRangeAddress;
    if-nez v2, :cond_1

    .line 197
    const/4 v1, 0x1

    .line 193
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    if-eq v2, v3, :cond_0

    .line 202
    const/4 v1, 0x1

    goto :goto_1

    .line 206
    .end local v2    # "craNew":Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v3    # "craOld":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_2
    if-eqz v1, :cond_4

    .line 207
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 208
    .local v5, "nRanges":I
    if-nez v5, :cond_3

    .line 209
    const/4 v10, 0x0

    .line 228
    .end local v5    # "nRanges":I
    :goto_2
    return v10

    .line 211
    .restart local v5    # "nRanges":I
    :cond_3
    new-array v6, v5, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 212
    .local v6, "newRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-interface {v9, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 213
    iget-object v10, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-virtual {v10, v6}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->setCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)V

    .line 216
    .end local v5    # "nRanges":I
    .end local v6    # "newRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_4
    const/4 v4, 0x0

    :goto_3
    iget-object v10, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_7

    .line 217
    iget-object v10, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 219
    .local v8, "rule":Lorg/apache/poi/hssf/record/CFRuleRecord;
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    .line 220
    .local v7, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eqz v7, :cond_5

    invoke-virtual {p1, v7, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 221
    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setParsedExpression1([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 223
    :cond_5
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    .line 224
    if-eqz v7, :cond_6

    invoke-virtual {p1, v7, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 225
    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setParsedExpression2([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 216
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 228
    .end local v7    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v8    # "rule":Lorg/apache/poi/hssf/record/CFRuleRecord;
    :cond_7
    const/4 v10, 0x1

    goto :goto_2
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 3
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 179
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->header:Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 181
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->rules:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 182
    .local v1, "rule":Lorg/apache/poi/hssf/record/CFRuleRecord;
    invoke-interface {p1, v1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "rule":Lorg/apache/poi/hssf/record/CFRuleRecord;
    :cond_0
    return-void
.end method
