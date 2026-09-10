.class public Lorg/apache/poi/hssf/record/ExternSheetRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ExternSheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    }
.end annotation


# static fields
.field public static final sid:S = 0x17s


# instance fields
.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    .line 98
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    .line 100
    .local v1, "nItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 101
    new-instance v2, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 102
    .local v2, "rec":Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    :cond_0
    return-void
.end method

.method public static combine([Lorg/apache/poi/hssf/record/ExternSheetRecord;)Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .locals 6
    .param p0, "esrs"    # [Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .prologue
    .line 295
    new-instance v4, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>()V

    .line 296
    .local v4, "result":Lorg/apache/poi/hssf/record/ExternSheetRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 297
    aget-object v0, p0, v1

    .line 298
    .local v0, "esr":Lorg/apache/poi/hssf/record/ExternSheetRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getNumOfREFRecords()I

    move-result v3

    .line 299
    .local v3, "nRefs":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 300
    invoke-direct {v0, v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addREFRecord(Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;)V

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v0    # "esr":Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .end local v2    # "j":I
    .end local v3    # "nRefs":I
    :cond_1
    return-object v4
.end method

.method private getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    return-object v0
.end method


# virtual methods
.method public addREFRecord(Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;)V
    .locals 1
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public addRef(III)I
    .locals 2
    .param p1, "extBookIndex"    # I
    .param p2, "firstSheetIndex"    # I
    .param p3, "lastSheetIndex"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public adjustIndex(II)V
    .locals 1
    .param p1, "extRefIndex"    # I
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->adjustIndex(I)V

    .line 173
    return-void
.end method

.method public findRefIndexFromExtBookIndex(I)I
    .locals 3
    .param p1, "extBookIndex"    # I

    .prologue
    .line 215
    iget-object v2, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 216
    .local v1, "nItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 217
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 221
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 216
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getExtbookIndexFromRefIndex(I)I
    .locals 2
    .param p1, "refIndex"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v0

    .line 208
    .local v0, "refRec":Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result v1

    return v1
.end method

.method public getFirstSheetIndexFromRefIndex(I)I
    .locals 1
    .param p1, "extRefIndex"    # I

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v0

    return v0
.end method

.method public getLastSheetIndexFromRefIndex(I)I
    .locals 1
    .param p1, "extRefIndex"    # I

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v0

    return v0
.end method

.method public getNumOfREFRecords()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumOfRefs()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRefIxForSheet(III)I
    .locals 4
    .param p1, "externalBookIndex"    # I
    .param p2, "firstSheetIndex"    # I
    .param p3, "lastSheetIndex"    # I

    .prologue
    .line 280
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 281
    .local v1, "nItems":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 282
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v2

    .line 283
    .local v2, "ref":Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 291
    .end local v0    # "i":I
    .end local v2    # "ref":Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0x17

    return v0
.end method

.method public removeSheet(I)V
    .locals 9
    .param p1, "sheetIdx"    # I

    .prologue
    .line 176
    iget-object v4, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 177
    .local v1, "nItems":I
    const/4 v3, -0x1

    .line 178
    .local v3, "toRemove":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 179
    iget-object v4, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    .line 180
    .local v2, "refSubRecord":Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 182
    move v3, v0

    .line 178
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v4

    if-le v4, p1, :cond_0

    .line 185
    iget-object v4, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    new-instance v5, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getExtBookIndex()I

    move-result v6

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getFirstSheetIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->getLastSheetIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(III)V

    invoke-interface {v4, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 190
    .end local v2    # "refSubRecord":Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
    :cond_2
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 191
    iget-object v4, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    :cond_3
    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 154
    iget-object v2, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 156
    .local v1, "nItems":I
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord;->_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 134
    .local v1, "nItems":I
    const-string v3, "[EXTERNSHEET]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v3, "   numOfRefs     = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 137
    const-string v3, "refrec         #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRef(I)Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    const-string v3, "[/EXTERNSHEET]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
