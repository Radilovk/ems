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
    .locals 5
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 66
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 68
    .local v0, "dataSize":I
    rem-int/lit8 v1, v0, 0x6

    if-nez v1, :cond_1

    .line 72
    div-int/lit8 v1, v0, 0x6

    .line 74
    .local v1, "nItems":I
    new-array v2, v1, [Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 75
    .local v2, "fis":[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 76
    new-instance v4, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v4, v2, v3

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "i":I
    :cond_0
    iput-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    .line 79
    return-void

    .line 69
    .end local v1    # "nItems":I
    .end local v2    # "fis":[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad data size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 95
    const/16 v0, 0xb6

    return v0
.end method

.method protected serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 84
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[SXPI]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 104
    const-string v2, "    item["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "]="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;->_fieldInfos:[Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->appendDebugInfo(Ljava/lang/StringBuffer;)V

    .line 106
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    const-string v1, "[/SXPI]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
