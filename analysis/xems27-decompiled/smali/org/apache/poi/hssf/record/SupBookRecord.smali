.class public final Lorg/apache/poi/hssf/record/SupBookRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SupBookRecord.java"


# static fields
.field protected static final CH_ALT_STARTUP_DIR:C = '\u0007'

.field protected static final CH_DOWN_DIR:C = '\u0003'

.field protected static final CH_LIB_DIR:C = '\u0008'

.field protected static final CH_LONG_VOLUME:C = '\u0005'

.field protected static final CH_SAME_VOLUME:C = '\u0002'

.field protected static final CH_STARTUP_DIR:C = '\u0006'

.field protected static final CH_UP_DIR:C = '\u0004'

.field protected static final CH_VOLUME:C = '\u0001'

.field protected static final PATH_SEPERATOR:Ljava/lang/String;

.field private static final SMALL_RECORD_SIZE:S = 0x4s

.field private static final TAG_ADD_IN_FUNCTIONS:S = 0x3a01s

.field private static final TAG_INTERNAL_REFERENCES:S = 0x401s

.field private static final logger:Lorg/apache/poi/util/POILogger;

.field public static final sid:S = 0x1aes


# instance fields
.field private _isAddInFunctions:Z

.field private field_1_number_of_sheets:S

.field private field_2_encoded_url:Ljava/lang/String;

.field private field_3_sheet_names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/apache/poi/hssf/record/SupBookRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/SupBookRecord;->logger:Lorg/apache/poi/util/POILogger;

    .line 57
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/SupBookRecord;->PATH_SEPERATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sheetNames"    # [Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 76
    array-length v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    .line 77
    iput-object p1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 6
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 97
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 98
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 100
    .local v0, "recLen":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    .line 102
    const/4 v1, 0x0

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 104
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    .line 106
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    .line 107
    iget-short v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    new-array v1, v1, [Ljava/lang/String;

    .line 108
    .local v1, "sheetNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 109
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    .line 112
    return-void

    .line 115
    .end local v1    # "sheetNames":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    .line 119
    .local v2, "nextShort":S
    const/16 v3, 0x401

    if-ne v2, v3, :cond_2

    .line 121
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    goto :goto_1

    .line 122
    :cond_2
    const/16 v1, 0x3a01

    const-string v3, ")"

    if-ne v2, v1, :cond_4

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    .line 125
    iget-short v4, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    if-ne v4, v1, :cond_3

    .line 133
    :goto_1
    return-void

    .line 126
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected 0x0001 for number of sheets field in \'Add-In Functions\' but got ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v5, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid EXTERNALBOOK code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>(ZS)V
    .locals 1
    .param p1, "isAddInFuncs"    # Z
    .param p2, "numberOfSheets"    # S

    .line 68
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 70
    iput-short p2, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    .line 73
    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    .line 74
    return-void
.end method

.method public static createAddInFunctions()Lorg/apache/poi/hssf/record/SupBookRecord;
    .locals 2

    .line 63
    new-instance v0, Lorg/apache/poi/hssf/record/SupBookRecord;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/hssf/record/SupBookRecord;-><init>(ZS)V

    return-object v0
.end method

.method public static createExternalReferences(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/poi/hssf/record/SupBookRecord;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "sheetNames"    # [Ljava/lang/String;

    .line 66
    new-instance v0, Lorg/apache/poi/hssf/record/SupBookRecord;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/record/SupBookRecord;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInternalReferences(S)Lorg/apache/poi/hssf/record/SupBookRecord;
    .locals 2
    .param p0, "numberOfSheets"    # S

    .line 60
    new-instance v0, Lorg/apache/poi/hssf/record/SupBookRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/record/SupBookRecord;-><init>(ZS)V

    return-object v0
.end method

.method private static decodeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "encodedUrl"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 216
    .local v3, "c":C
    const/4 v4, 0x5

    packed-switch v3, :pswitch_data_0

    .line 246
    .local v2, "driveLetter":C
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 242
    :pswitch_0
    sget-object v5, Lorg/apache/poi/hssf/record/SupBookRecord;->logger:Lorg/apache/poi/util/POILogger;

    const-string v6, "EXCEL.EXE path unkown - using this directoy instead: ."

    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 243
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/poi/hssf/record/SupBookRecord;->PATH_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    goto :goto_1

    .line 237
    :pswitch_1
    sget-object v5, Lorg/apache/poi/hssf/record/SupBookRecord;->logger:Lorg/apache/poi/util/POILogger;

    const-string v6, "Found unexpected key: ChLongVolume - IGNORING"

    invoke-virtual {v5, v4, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 238
    goto :goto_1

    .line 233
    :pswitch_2
    const-string v4, ".."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/poi/hssf/record/SupBookRecord;->PATH_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    goto :goto_1

    .line 230
    :pswitch_3
    sget-object v4, Lorg/apache/poi/hssf/record/SupBookRecord;->PATH_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    goto :goto_1

    .line 227
    :pswitch_4
    sget-object v4, Lorg/apache/poi/hssf/record/SupBookRecord;->PATH_SEPERATOR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    goto :goto_1

    .line 218
    .end local v2    # "driveLetter":C
    :pswitch_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 219
    .restart local v2    # "driveLetter":C
    const/16 v4, 0x40

    if-ne v2, v4, :cond_0

    .line 220
    const-string v4, "\\\\"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    nop

    .line 214
    .end local v2    # "driveLetter":C
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getDataSize()I
    .locals 4

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x4

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x2

    .line 162
    .local v0, "sum":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 165
    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getNumberOfSheets()S
    .locals 1

    .line 191
    iget-short v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    return v0
.end method

.method public getSheetNames()[Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 196
    const/16 v0, 0x1ae

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 4

    .line 199
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    .line 200
    .local v0, "encodedUrl":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 209
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 204
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->decodeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 202
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isAddInFunctions()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExternalReferences()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInternalReferences()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 171
    iget-short v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 173
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 177
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 180
    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3a01

    goto :goto_1

    :cond_2
    const/16 v0, 0x401

    .line 182
    .local v0, "field2val":I
    :goto_1
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 184
    .end local v0    # "field2val":I
    :goto_2
    return-void
.end method

.method public setNumberOfSheets(S)V
    .locals 0
    .param p1, "number"    # S

    .line 187
    iput-short p1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    .line 188
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "pUrl"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[SUPBOOK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const-string v1, "External References]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, " .url     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_2_encoded_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v2, " .nSheets = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_3_sheet_names:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 144
    .local v5, "sheetname":Ljava/lang/String;
    const-string v6, "    .name = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    .end local v5    # "sheetname":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    const-string v1, "[/SUPBOOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 147
    :cond_1
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->_isAddInFunctions:Z

    if-eqz v1, :cond_2

    .line 148
    const-string v1, "Add-In Functions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 150
    :cond_2
    const-string v1, "Internal References"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, " nSheets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/SupBookRecord;->field_1_number_of_sheets:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 153
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
