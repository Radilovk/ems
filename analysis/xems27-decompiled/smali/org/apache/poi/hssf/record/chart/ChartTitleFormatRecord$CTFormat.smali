.class final Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;
.super Ljava/lang/Object;
.source "ChartTitleFormatRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CTFormat"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x4


# instance fields
.field private _fontIndex:I

.field private _offset:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->_offset:I

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->_fontIndex:I

    .line 44
    return-void
.end method


# virtual methods
.method public getFontIndex()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->_fontIndex:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->_offset:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 57
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->_offset:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 58
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->_fontIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 59
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "newOff"    # I

    .line 50
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartTitleFormatRecord$CTFormat;->_offset:I

    .line 51
    return-void
.end method
