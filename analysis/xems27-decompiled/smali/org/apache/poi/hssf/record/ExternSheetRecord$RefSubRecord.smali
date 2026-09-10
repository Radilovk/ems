.class final Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;
.super Ljava/lang/Object;
.source "ExternSheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/ExternSheetRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefSubRecord"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# instance fields
.field private _extBookIndex:I

.field private _firstSheetIndex:I

.field private _lastSheetIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "extBookIndex"    # I
    .param p2, "firstSheetIndex"    # I
    .param p3, "lastSheetIndex"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    .line 53
    iput p2, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    .line 54
    iput p3, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;-><init>(III)V

    .line 62
    return-void
.end method


# virtual methods
.method public adjustIndex(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 45
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    .line 46
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    .line 47
    return-void
.end method

.method public getExtBookIndex()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    return v0
.end method

.method public getFirstSheetIndex()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 83
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 84
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "extBook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_extBookIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, " firstSheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_firstSheetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, " lastSheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExternSheetRecord$RefSubRecord;->_lastSheetIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
