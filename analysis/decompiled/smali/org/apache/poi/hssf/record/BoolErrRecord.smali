.class public final Lorg/apache/poi/hssf/record/BoolErrRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "BoolErrRecord.java"


# static fields
.field public static final sid:S = 0x205s


# instance fields
.field private _isError:Z

.field private _value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 56
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for BOOLERR record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    .line 59
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 60
    .local v0, "flag":I
    packed-switch v0, :pswitch_data_1

    .line 68
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected isError flag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for BOOLERR record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    .end local v0    # "flag":I
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    goto :goto_0

    .line 62
    .restart local v0    # "flag":I
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    .line 71
    :goto_1
    return-void

    .line 65
    :pswitch_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 60
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected appendValueText(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "  .boolVal = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "  .errCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    .line 174
    .local v0, "rec":Lorg/apache/poi/hssf/record/BoolErrRecord;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 175
    iget v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    .line 176
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    iput-boolean v1, v0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    .line 177
    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorValue()B
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    int-to-byte v0, v0

    return v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "BOOLERR"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x205

    return v0
.end method

.method protected getValueDataSize()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    return v0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return v0
.end method

.method protected serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 159
    iget v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 160
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 161
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(B)V
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 91
    sparse-switch p1, :sswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Value can only be 0,7,15,23,29,36 or 42. It cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :sswitch_0
    iput p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    .line 101
    return-void

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_0
        0xf -> :sswitch_0
        0x17 -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method public setValue(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    .line 80
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    .line 81
    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method
