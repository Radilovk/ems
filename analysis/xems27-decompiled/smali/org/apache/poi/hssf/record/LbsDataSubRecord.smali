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

    .line 156
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;II)V
    .locals 6
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "cbFContinued"    # I
    .param p3, "cmoOt"    # I

    .line 96
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 97
    iput p2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    .line 99
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 100
    .local v0, "encodedTokenLen":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 101
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    .line 102
    .local v3, "formulaSize":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    .line 104
    invoke-static {v3, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    .line 105
    .local v4, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v5, v4

    if-ne v5, v2, :cond_2

    .line 109
    aget-object v5, v4, v1

    iput-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 110
    sub-int v5, v0, v3

    add-int/lit8 v5, v5, -0x6

    if-eqz v5, :cond_1

    if-ne v5, v2, :cond_0

    .line 112
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    .line 113
    goto :goto_0

    .line 118
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v2, "Unexpected leftover bytes"

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    .line 116
    goto :goto_0

    .line 106
    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tokens but expected exactly 1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v3    # "formulaSize":I
    .end local v4    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_3
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    .line 123
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    .line 124
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    .line 125
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    .line 129
    const/16 v3, 0x14

    if-ne p3, v3, :cond_4

    .line 130
    new-instance v3, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    .line 135
    :cond_4
    iget v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 136
    iget v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    .line 137
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    if-ge v3, v4, :cond_5

    .line 138
    iget-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    .end local v3    # "i":I
    :cond_5
    iget v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    .line 148
    iget v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    new-array v3, v3, [Z

    iput-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    .line 149
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    if-ge v3, v4, :cond_7

    .line 150
    iget-object v4, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v5

    if-ne v5, v2, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    aput-boolean v5, v4, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 154
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method public static newAutoFilterInstance()Lorg/apache/poi/hssf/record/LbsDataSubRecord;
    .locals 3

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

    .line 262
    return-object p0
.end method

.method protected getDataSize()I
    .locals 6

    .line 189
    const/4 v0, 0x2

    .line 192
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v1, :cond_0

    .line 193
    add-int/lit8 v0, v0, 0x2

    .line 194
    add-int/lit8 v0, v0, 0x4

    .line 195
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x8

    .line 202
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v1, :cond_1

    .line 203
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->getDataSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 207
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    .line 206
    .end local v4    # "str":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-eqz v1, :cond_3

    .line 211
    array-length v1, v1

    add-int/2addr v0, v1

    .line 213
    :cond_3
    return v0
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

.method public getNumberOfItems()I
    .locals 1

    .line 294
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    return v0
.end method

.method public isTerminating()Z
    .locals 1

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 218
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 219
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 221
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    .line 225
    .local v0, "formulaSize":I
    add-int/lit8 v1, v0, 0x6

    .line 226
    .local v1, "linkSize":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v2, :cond_1

    .line 227
    add-int/lit8 v1, v1, 0x1

    .line 229
    :cond_1
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 230
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 231
    iget v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPreFormulaInt:I

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 232
    iget-object v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v2, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 233
    iget-object v2, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v2, :cond_2

    .line 234
    invoke-virtual {v2}, Ljava/lang/Byte;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 238
    .end local v0    # "formulaSize":I
    .end local v1    # "linkSize":I
    :cond_2
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 239
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 240
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 241
    iget v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 243
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v0, :cond_3

    .line 244
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 247
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_rgLines:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 249
    .local v3, "str":Ljava/lang/String;
    invoke-static {p1, v3}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 248
    .end local v3    # "str":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_bsels:[Z

    .local v0, "arr$":[Z
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v1, :cond_5

    aget-boolean v3, v0, v2

    .line 255
    .local v3, "val":Z
    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 254
    .end local v3    # "val":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 258
    .end local v0    # "arr$":[Z
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

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

    iget v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cbFContinued:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v2, "    .formula        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    iget-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_linkPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    :cond_0
    const-string v3, "    .nEntryCount   ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_cLines:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const-string v3, "    .selEntryIx    ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_iSel:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v3, "    .style         ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_flags:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v3, "    .unknownShort10="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_idEdit:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/LbsDataSubRecord;->_dropData:Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/LbsDataSubRecord$LbsDropData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    :cond_1
    const-string v1, "[/ftLbsData]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
