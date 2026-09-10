.class public final Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PageItemRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
    }
.end annotation


# static fields
.field public static final sid:S = 0xb6s


# instance fields
.field private final _fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 7
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 68
    .local v0, "dataSize":I
    rem-int/lit8 v4, v0, 0x6

    if-eqz v4, :cond_0

    .line 69
    new-instance v4, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad data size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_0
    div-int/lit8 v3, v0, 0x6

    .line 74
    .local v3, "nItems":I
    new-array v1, v3, [Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 75
    .local v1, "fis":[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 76
    new-instance v4, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v4, v1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 79
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0xb6

    return v0
.end method

.method protected serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "[SXPI]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 104
    const-string v2, "    item["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->appendDebugInfo(Ljava/lang/StringBuffer;)V

    .line 106
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const-string v2, "[/SXPI]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
