.class public Lorg/apache/poi/hssf/usermodel/HSSFOptimiser;
.super Ljava/lang/Object;
.source "HSSFOptimiser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static optimiseCellStyles(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 15
    .param p0, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 176
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v0

    new-array v0, v0, [S

    .line 177
    .local v0, "newPos":[S
    array-length v1, v0

    new-array v1, v1, [Z

    .line 178
    .local v1, "isUsed":[Z
    array-length v2, v0

    new-array v2, v2, [Z

    .line 179
    .local v2, "zapRecords":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 180
    aput-boolean v5, v1, v3

    .line 181
    int-to-short v4, v3

    aput-short v4, v0, v3

    .line 182
    aput-boolean v5, v2, v3

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "i":I
    :cond_0
    array-length v3, v0

    new-array v3, v3, [Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    .line 188
    .local v3, "xfrs":[Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_1

    .line 189
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v6

    aput-object v6, v3, v4

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    .end local v4    # "i":I
    :cond_1
    const/16 v4, 0x15

    .restart local v4    # "i":I
    :goto_2
    array-length v6, v0

    const/4 v7, 0x1

    if-ge v4, v6, :cond_6

    .line 200
    const/4 v6, -0x1

    .line 201
    .local v6, "earlierDuplicate":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    const/4 v9, -0x1

    if-ge v8, v4, :cond_3

    if-ne v6, v9, :cond_3

    .line 202
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v9

    .line 203
    .local v9, "xfCheck":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 204
    move v6, v8

    .line 201
    .end local v9    # "xfCheck":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 209
    .end local v8    # "j":I
    :cond_3
    if-eq v6, v9, :cond_4

    .line 210
    int-to-short v8, v6

    aput-short v8, v0, v4

    .line 211
    aput-boolean v7, v2, v4

    .line 214
    :cond_4
    if-eq v6, v9, :cond_5

    .line 215
    aput-boolean v7, v1, v6

    .line 197
    .end local v6    # "earlierDuplicate":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 221
    .end local v4    # "i":I
    :cond_6
    const/4 v4, 0x0

    .local v4, "sheetNum":I
    :goto_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 222
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v6

    .line 223
    .local v6, "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ss/usermodel/Row;

    .line 224
    .local v9, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ss/usermodel/Cell;

    .line 225
    .local v11, "cellI":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v12, v11

    check-cast v12, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 226
    .local v12, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v13

    .line 227
    .local v13, "oldXf":S
    aput-boolean v7, v1, v13

    .line 228
    .end local v11    # "cellI":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v12    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v13    # "oldXf":S
    goto :goto_6

    .line 229
    .end local v9    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_7
    goto :goto_5

    .line 221
    .end local v6    # "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 232
    .end local v4    # "sheetNum":I
    :cond_9
    const/16 v4, 0x15

    .local v4, "i":I
    :goto_7
    array-length v6, v1

    if-ge v4, v6, :cond_b

    .line 233
    aget-boolean v6, v1, v4

    if-nez v6, :cond_a

    .line 235
    aput-boolean v7, v2, v4

    .line 236
    aput-short v5, v0, v4

    .line 232
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 244
    .end local v4    # "i":I
    :cond_b
    const/16 v4, 0x15

    .restart local v4    # "i":I
    :goto_8
    array-length v5, v0

    if-ge v4, v5, :cond_e

    .line 247
    aget-short v5, v0, v4

    .line 248
    .local v5, "preDeletePos":S
    move v6, v5

    .line 249
    .local v6, "newPosition":S
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_9
    if-ge v8, v5, :cond_d

    .line 250
    aget-boolean v9, v2, v8

    if-eqz v9, :cond_c

    add-int/lit8 v9, v6, -0x1

    int-to-short v6, v9

    .line 249
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 254
    .end local v8    # "j":I
    :cond_d
    aput-short v6, v0, v4

    .line 244
    .end local v5    # "preDeletePos":S
    .end local v6    # "newPosition":S
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 260
    .end local v4    # "i":I
    :cond_e
    array-length v4, v0

    .line 261
    .local v4, "max":I
    const/4 v5, 0x0

    .line 262
    .local v5, "removed":I
    const/16 v6, 0x15

    .local v6, "i":I
    :goto_a
    if-ge v6, v4, :cond_10

    .line 263
    add-int v8, v6, v5

    aget-boolean v8, v2, v8

    if-eqz v8, :cond_f

    .line 264
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeExFormatRecord(I)V

    .line 265
    add-int/lit8 v6, v6, -0x1

    .line 266
    add-int/lit8 v4, v4, -0x1

    .line 267
    add-int/lit8 v5, v5, 0x1

    .line 262
    :cond_f
    add-int/2addr v6, v7

    goto :goto_a

    .line 272
    .end local v6    # "i":I
    :cond_10
    const/4 v6, 0x0

    .local v6, "sheetNum":I
    :goto_b
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v7

    if-ge v6, v7, :cond_13

    .line 273
    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v7

    .line 274
    .local v7, "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ss/usermodel/Row;

    .line 275
    .restart local v9    # "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ss/usermodel/Cell;

    .line 276
    .restart local v11    # "cellI":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v12, v11

    check-cast v12, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 277
    .restart local v12    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v13

    .line 279
    .restart local v13    # "oldXf":S
    aget-short v14, v0, v13

    invoke-virtual {p0, v14}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(S)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v14

    .line 282
    .local v14, "newStyle":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    invoke-virtual {v12, v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    .line 283
    .end local v11    # "cellI":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v12    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v13    # "oldXf":S
    .end local v14    # "newStyle":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    goto :goto_d

    .line 284
    .end local v9    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_11
    goto :goto_c

    .line 272
    .end local v7    # "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 286
    .end local v6    # "sheetNum":I
    :cond_13
    return-void
.end method

.method public static optimiseFonts(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 15
    .param p0, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 53
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumberOfFontRecords()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 55
    .local v0, "newPos":[S
    array-length v2, v0

    new-array v2, v2, [Z

    .line 56
    .local v2, "zapRecords":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 57
    int-to-short v4, v3

    aput-short v4, v0, v3

    .line 58
    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "i":I
    :cond_0
    array-length v3, v0

    new-array v3, v3, [Lorg/apache/poi/hssf/record/FontRecord;

    .line 64
    .local v3, "frecs":[Lorg/apache/poi/hssf/record/FontRecord;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    const/4 v6, 0x4

    if-ge v4, v5, :cond_2

    .line 66
    if-ne v4, v6, :cond_1

    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    aput-object v5, v3, v4

    .line 64
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 76
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x5

    .restart local v4    # "i":I
    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_7

    .line 79
    const/4 v5, -0x1

    .line 80
    .local v5, "earlierDuplicate":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    const/4 v8, -0x1

    if-ge v7, v4, :cond_5

    if-ne v5, v8, :cond_5

    .line 81
    if-ne v7, v6, :cond_3

    goto :goto_5

    .line 83
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v8

    .line 84
    .local v8, "frCheck":Lorg/apache/poi/hssf/record/FontRecord;
    aget-object v9, v3, v4

    invoke-virtual {v8, v9}, Lorg/apache/poi/hssf/record/FontRecord;->sameProperties(Lorg/apache/poi/hssf/record/FontRecord;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 85
    move v5, v7

    .line 80
    .end local v8    # "frCheck":Lorg/apache/poi/hssf/record/FontRecord;
    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 90
    .end local v7    # "j":I
    :cond_5
    if-eq v5, v8, :cond_6

    .line 91
    int-to-short v7, v5

    aput-short v7, v0, v4

    .line 92
    aput-boolean v1, v2, v4

    .line 76
    .end local v5    # "earlierDuplicate":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 100
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x5

    .restart local v4    # "i":I
    :goto_6
    array-length v5, v0

    if-ge v4, v5, :cond_a

    .line 103
    aget-short v5, v0, v4

    .line 104
    .local v5, "preDeletePos":S
    move v6, v5

    .line 105
    .local v6, "newPosition":S
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_7
    if-ge v7, v5, :cond_9

    .line 106
    aget-boolean v8, v2, v7

    if-eqz v8, :cond_8

    add-int/lit8 v8, v6, -0x1

    int-to-short v6, v8

    .line 105
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 110
    .end local v7    # "j":I
    :cond_9
    aput-short v6, v0, v4

    .line 100
    .end local v5    # "preDeletePos":S
    .end local v6    # "newPosition":S
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 114
    .end local v4    # "i":I
    :cond_a
    const/4 v4, 0x5

    .restart local v4    # "i":I
    :goto_8
    array-length v5, v0

    if-ge v4, v5, :cond_c

    .line 115
    aget-boolean v5, v2, v4

    if-eqz v5, :cond_b

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeFontRecord(Lorg/apache/poi/hssf/record/FontRecord;)V

    .line 114
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 124
    .end local v4    # "i":I
    :cond_c
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->resetFontCache()V

    .line 128
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 129
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v5

    .line 130
    .local v5, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v6

    aget-short v6, v0, v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 128
    .end local v5    # "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 139
    .end local v4    # "i":I
    :cond_d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 140
    .local v4, "doneUnicodeStrings":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/apache/poi/hssf/record/common/UnicodeString;>;"
    const/4 v5, 0x0

    .local v5, "sheetNum":I
    :goto_a
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 141
    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v6

    .line 142
    .local v6, "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/ss/usermodel/Row;

    .line 143
    .local v8, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v8}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/poi/ss/usermodel/Cell;

    .line 144
    .local v10, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v10}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v11

    if-ne v11, v1, :cond_10

    .line 145
    invoke-interface {v10}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 146
    .local v11, "rtr":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getRawUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v12

    .line 149
    .local v12, "u":Lorg/apache/poi/hssf/record/common/UnicodeString;
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 151
    const/4 v13, 0x5

    .local v13, "i":S
    :goto_d
    array-length v14, v0

    if-ge v13, v14, :cond_f

    .line 152
    aget-short v14, v0, v13

    if-eq v13, v14, :cond_e

    .line 153
    aget-short v14, v0, v13

    invoke-virtual {v12, v13, v14}, Lorg/apache/poi/hssf/record/common/UnicodeString;->swapFontUse(SS)V

    .line 151
    :cond_e
    add-int/lit8 v14, v13, 0x1

    int-to-short v13, v14

    goto :goto_d

    .line 158
    .end local v13    # "i":S
    :cond_f
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v10    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v11    # "rtr":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v12    # "u":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_10
    goto :goto_c

    .line 162
    .end local v8    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_11
    goto :goto_b

    .line 140
    .end local v6    # "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 164
    .end local v5    # "sheetNum":I
    :cond_13
    return-void
.end method
