.class public Lorg/apache/poi/hssf/record/LbsDataSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "LbsDataSubRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;
    }
.end annotation


# static fields
.field public static final sid:I = 0x13


# instance fields
.field private _bsels:[Z

.field private _cLines:I

.field private _cbFContinued:I

.field private _dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

.field private _flags:I

.field private _iSel:I

.field private _idEdit:I

.field private _linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private _rgLines:[Ljava/lang/String;

.field private _unknownPostFormulaByte:Ljava/lang/Byte;

.field private _unknownPreFormulaInt:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 8
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "cbFContinued"    # I
    .param p3, "cmoOt"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 96
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 97
    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    .line 99
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 100
    .local v0, "encodedTokenLen":I
    if-lez v0, :cond_1

    .line 101
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    .line 102
    .local v1, "formulaSize":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    .line 104
    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 105
    .local v3, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v4, v3

    if-eq v4, v5, :cond_0

    .line 106
    new-instance v4, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tokens but expected exactly 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_0
    aget-object v4, v3, v6

    iput-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 110
    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x6

    packed-switch v4, :pswitch_data_0

    .line 118
    new-instance v4, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v5, "Unexpected leftover bytes"

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :pswitch_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    .line 122
    .end local v1    # "formulaSize":I
    .end local v3    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    .line 123
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    .line 124
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    .line 125
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    .line 129
    const/16 v4, 0x14

    if-ne p3, v4, :cond_2

    .line 130
    new-instance v4, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-direct {v4, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    .line 135
    :cond_2
    iget v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 136
    iget v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    .line 137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    if-ge v2, v4, :cond_3

    .line 138
    iget-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v2    # "i":I
    .restart local v1    # "formulaSize":I
    .restart local v3    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :pswitch_1
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    goto :goto_0

    .line 147
    .end local v1    # "formulaSize":I
    .end local v3    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_3
    iget v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 148
    iget v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    new-array v4, v4, [Z

    iput-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    .line 149
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    if-ge v2, v4, :cond_5

    .line 150
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_3
    aput-boolean v4, v7, v2

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v4, v6

    .line 150
    goto :goto_3

    .line 154
    .end local v2    # "i":I
    :cond_5
    return-void

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newAutoFilterInstance()Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LbsDataSubRecord;-><init>()V

    .line 167
    .local v0, "lbs":Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    const/16 v1, 0x1fee

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    .line 168
    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    .line 170
    const/16 v1, 0x301

    iput v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    .line 171
    new-instance v1, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;-><init>()V

    iput-object v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    .line 172
    iget-object v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->access$002(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I

    .line 175
    iget-object v1, v0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->access$102(Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;I)I

    .line 176
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 262
    return-object p0
.end method

.method protected getDataSize()I
    .locals 6

    .prologue
    .line 189
    const/4 v3, 0x2

    .line 192
    .local v3, "result":I
    iget-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v5, :cond_0

    .line 193
    add-int/lit8 v3, v3, 0x2

    .line 194
    add-int/lit8 v3, v3, 0x4

    .line 195
    iget-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v5

    add-int/lit8 v3, v5, 0x8

    .line 196
    iget-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v5, :cond_0

    .line 197
    add-int/lit8 v3, v3, 0x1

    .line 201
    :cond_0
    add-int/lit8 v3, v3, 0x8

    .line 202
    iget-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v5, :cond_1

    .line 203
    iget-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->getDataSize()I

    move-result v5

    add-int/2addr v3, v5

    .line 205
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 206
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 207
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-eqz v5, :cond_3

    .line 211
    iget-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    array-length v5, v5

    add-int/2addr v3, v5

    .line 213
    :cond_3
    return v3
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    return v0
.end method

.method public isTerminating()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 9
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    const/4 v8, 0x0

    .line 218
    const/16 v7, 0x13

    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 219
    iget v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 221
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v7, :cond_2

    .line 222
    invoke-interface {p1, v8}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 238
    :cond_0
    :goto_0
    iget v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 239
    iget v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 240
    iget v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 241
    iget v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 243
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v7, :cond_1

    .line 244
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-virtual {v7, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 247
    :cond_1
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 248
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    .line 249
    .local v5, "str":Ljava/lang/String;
    invoke-static {p1, v5}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v1

    .line 225
    .local v1, "formulaSize":I
    add-int/lit8 v4, v1, 0x6

    .line 226
    .local v4, "linkSize":I
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v7, :cond_3

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 229
    :cond_3
    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 230
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 231
    iget v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 232
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v7, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 233
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v7, :cond_0

    .line 234
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->intValue()I

    move-result v7

    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    goto :goto_0

    .line 253
    .end local v1    # "formulaSize":I
    .end local v4    # "linkSize":I
    :cond_4
    iget-object v7, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-eqz v7, :cond_6

    .line 254
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    .local v0, "arr$":[Z
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_6

    aget-boolean v6, v0, v2

    .line 255
    .local v6, "val":Z
    if-eqz v6, :cond_5

    const/4 v7, 0x1

    :goto_3
    invoke-interface {p1, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v7, v8

    .line 255
    goto :goto_3

    .line 258
    .end local v0    # "arr$":[Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "val":Z
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 267
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 269
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[ftLbsData]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    const-string v1, "    .unknownShort1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v1, "    .formula        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    :cond_0
    const-string v1, "    .nEntryCount   ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const-string v1, "    .selEntryIx    ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v1, "    .style         ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v1, "    .unknownShort10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    :cond_1
    const-string v1, "[/ftLbsData]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
