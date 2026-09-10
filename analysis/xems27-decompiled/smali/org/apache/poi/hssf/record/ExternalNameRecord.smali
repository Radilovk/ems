.class public final Lorg/apache/poi/hssf/record/ExternalNameRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ExternalNameRecord.java"


# static fields
.field private static final OPT_AUTOMATIC_LINK:I = 0x2

.field private static final OPT_BUILTIN_NAME:I = 0x1

.field private static final OPT_ICONIFIED_PICTURE_LINK:I = 0x8000

.field private static final OPT_OLE_LINK:I = 0x10

.field private static final OPT_PICTURE_LINK:I = 0x4

.field private static final OPT_STD_DOCUMENT_NAME:I = 0x8

.field public static final sid:S = 0x23s


# instance fields
.field private _ddeValues:[Ljava/lang/Object;

.field private _nColumns:I

.field private _nRows:I

.field private field_1_option_flag:S

.field private field_2_ixals:S

.field private field_3_not_used:S

.field private field_4_name:Ljava/lang/String;

.field private field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    .line 169
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 171
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 172
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    .line 173
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    .line 174
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_3_not_used:S

    .line 176
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 177
    .local v0, "numChars":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isOLELink()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isStdDocumentNameIdentifier()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isAutomaticLink()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    .line 187
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 188
    .local v1, "nColumns":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 190
    .local v2, "nRows":I
    mul-int v3, v2, v1

    .line 191
    .local v3, "totalCount":I
    invoke-static {p1, v3}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    .line 192
    iput v1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nColumns:I

    .line 193
    iput v2, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nRows:I

    .line 194
    .end local v1    # "nColumns":I
    .end local v2    # "nRows":I
    .end local v3    # "totalCount":I
    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 198
    .local v1, "formulaLen":I
    invoke-static {v1, p1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 201
    .end local v1    # "formulaLen":I
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 2

    .line 129
    const/4 v0, 0x6

    .line 130
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isOLELink()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isStdDocumentNameIdentifier()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isAutomaticLink()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 135
    add-int/lit8 v0, v0, 0x3

    .line 136
    invoke-static {v1}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_1
    :goto_0
    return v0
.end method

.method public getIx()S
    .locals 1

    .line 113
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    return v0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 205
    const/16 v0, 0x23

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    return-object v0
.end method

.method public isAutomaticLink()Z
    .locals 1

    .line 75
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltInName()Z
    .locals 2

    .line 69
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isIconifiedPictureLink()Z
    .locals 2

    .line 93
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOLELink()Z
    .locals 1

    .line 90
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPicureLink()Z
    .locals 1

    .line 81
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStdDocumentNameIdentifier()Z
    .locals 1

    .line 87
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 147
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 148
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 149
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_3_not_used:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 151
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 152
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isOLELink()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isStdDocumentNameIdentifier()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->isAutomaticLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 157
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 158
    iget v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_nRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 159
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->_ddeValues:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 165
    :cond_1
    :goto_0
    return-void
.end method

.method public setIx(S)V
    .locals 0
    .param p1, "ix"    # S

    .line 116
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    .line 117
    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 123
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    .line 124
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[EXTERNALNAME]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v1, "    .options      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_1_option_flag:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v2, "    .ix      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_2_ixals:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v2, "    .name    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v2, p0, Lorg/apache/poi/hssf/record/ExternalNameRecord;->field_5_name_definition:Lorg/apache/poi/ss/formula/Formula;

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 217
    .local v2, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 218
    aget-object v4, v2, v3

    .line 219
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v3    # "i":I
    :cond_0
    const-string v1, "[/EXTERNALNAME]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
