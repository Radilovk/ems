.class final Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
.super Ljava/lang/Object;
.source "LinkTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/model/LinkTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExternalBookBlock"
.end annotation


# instance fields
.field private final _crnBlocks:[Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

.field private final _externalBookRecord:Lorg/apache/poi/hssf/record/SupBookRecord;

.field private _externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Lorg/apache/poi/hssf/record/SupBookRecord;->createAddInFunctions()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalBookRecord:Lorg/apache/poi/hssf/record/SupBookRecord;

    .line 141
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/ExternalNameRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    .line 142
    new-array v0, v0, [Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_crnBlocks:[Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "numberOfSheets"    # I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    int-to-short v0, p1

    invoke-static {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->createInternalReferences(S)Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalBookRecord:Lorg/apache/poi/hssf/record/SupBookRecord;

    .line 130
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/ExternalNameRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    .line 131
    new-array v0, v0, [Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_crnBlocks:[Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sheetNames"    # [Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Lorg/apache/poi/hssf/record/SupBookRecord;->createExternalReferences(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalBookRecord:Lorg/apache/poi/hssf/record/SupBookRecord;

    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_crnBlocks:[Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 3
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/SupBookRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalBookRecord:Lorg/apache/poi/hssf/record/SupBookRecord;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    if-ne v1, v2, :cond_0

    .line 101
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/ExternalNameRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/CRNCountRecord;

    if-ne v1, v2, :cond_1

    .line 109
    new-instance v1, Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_crnBlocks:[Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)[Lorg/apache/poi/hssf/record/ExternalNameRecord;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    return-object v0
.end method


# virtual methods
.method public addExternalName(Lorg/apache/poi/hssf/record/ExternalNameRecord;)I
    .locals 4
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/ExternalNameRecord;

    .line 175
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/ExternalNameRecord;

    .line 176
    .local v1, "tmp":[Lorg/apache/poi/hssf/record/ExternalNameRecord;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    .line 178
    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    .line 179
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalBookRecord:Lorg/apache/poi/hssf/record/SupBookRecord;

    return-object v0
.end method

.method public getIndexOfName(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 163
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    return v0

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNameIx(I)I
    .locals 1
    .param p1, "definedNameIndex"    # I

    .line 154
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->getIx()S

    move-result v0

    return v0
.end method

.method public getNameText(I)Ljava/lang/String;
    .locals 1
    .param p1, "definedNameIndex"    # I

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfNames()I
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->_externalNameRecords:[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    array-length v0, v0

    return v0
.end method
