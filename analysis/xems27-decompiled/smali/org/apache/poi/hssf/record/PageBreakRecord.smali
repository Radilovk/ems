.class public abstract Lorg/apache/poi/hssf/record/PageBreakRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PageBreakRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field private _breakMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/record/PageBreakRecord$Break;",
            ">;"
        }
    .end annotation
.end field

.field private _breaks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/PageBreakRecord$Break;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/poi/hssf/record/PageBreakRecord;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 85
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 86
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 87
    .local v0, "nBreaks":I
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    .line 90
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 91
    new-instance v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 92
    .local v2, "br":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v3, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    iget v4, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v2    # "br":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "k":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addBreak(III)V
    .locals 3
    .param p1, "main"    # I
    .param p2, "subFrom"    # I
    .param p3, "subTo"    # I

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 164
    .local v0, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 165
    .local v1, "region":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    if-nez v1, :cond_0

    .line 166
    new-instance v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;-><init>(III)V

    move-object v1, v2

    .line 167
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    iput p1, v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    .line 171
    iput p2, v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    .line 172
    iput p3, v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    .line 174
    :goto_0
    return-void
.end method

.method public final getBreak(I)Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    .locals 2
    .param p1, "main"    # I

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 194
    .local v0, "rowKey":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    return-object v1
.end method

.method public final getBreaks()[I
    .locals 5

    .line 198
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v0

    .line 199
    .local v0, "count":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 200
    sget-object v1, Lorg/apache/poi/hssf/record/PageBreakRecord;->EMPTY_INT_ARRAY:[I

    return-object v1

    .line 202
    :cond_0
    new-array v1, v0, [I

    .line 203
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 204
    iget-object v3, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 205
    .local v3, "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget v4, v3, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    aput v4, v1, v2

    .line 203
    .end local v3    # "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public final getBreaksIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hssf/record/PageBreakRecord$Break;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getNumBreaks()I
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final removeBreak(I)V
    .locals 3
    .param p1, "main"    # I

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 182
    .local v0, "rowKey":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 183
    .local v1, "region":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breakMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public final serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 106
    iget-object v0, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 107
    .local v0, "nBreaks":I
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 109
    iget-object v2, p0, Lorg/apache/poi/hssf/record/PageBreakRecord;->_breaks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getSid()S

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 129
    const-string v1, "HORIZONTALPAGEBREAK"

    .line 130
    .local v1, "label":Ljava/lang/String;
    const-string v2, "row"

    .line 131
    .local v2, "mainLabel":Ljava/lang/String;
    const-string v3, "col"

    .local v3, "subLabel":Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "mainLabel":Ljava/lang/String;
    .end local v3    # "subLabel":Ljava/lang/String;
    :cond_0
    const-string v1, "VERTICALPAGEBREAK"

    .line 134
    .restart local v1    # "label":Ljava/lang/String;
    const-string v2, "column"

    .line 135
    .restart local v2    # "mainLabel":Ljava/lang/String;
    const-string v3, "row"

    .line 138
    .restart local v3    # "subLabel":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v7, "     .sid        ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getSid()S

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v7, "     .numbreaks ="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaksIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 142
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/PageBreakRecord$Break;>;"
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 144
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 146
    .local v9, "region":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    const-string v10, "     ."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, " (zero-based) ="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v9, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v11, "From    ="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v11, v9, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "To      ="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v10, v9, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .end local v9    # "region":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 151
    .end local v8    # "k":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
