.class public final Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DefaultColWidthRecord.java"


# static fields
.field public static final DEFAULT_COLUMN_WIDTH:I = 0x8

.field public static final sid:S = 0x55s


# instance fields
.field private field_1_col_width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 95
    new-instance v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;-><init>()V

    .line 96
    .local v0, "rec":Lorg/apache/poi/hssf/record/DefaultColWidthRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    .line 97
    return-object v0
.end method

.method public getColWidth()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 86
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 91
    const/16 v0, 0x55

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 83
    return-void
.end method

.method public setColWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 57
    iput p1, p0, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->field_1_col_width:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DEFAULTCOLWIDTH]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "    .colwidth      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DefaultColWidthRecord;->getColWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "[/DEFAULTCOLWIDTH]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
