.class public Lorg/apache/poi/hssf/usermodel/HSSFOptimiser;
.super Ljava/lang/Object;
.source "HSSFOptimiser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static optimiseCellStyles(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 24
    .param p0, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .prologue
    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v23

    move/from16 v0, v23

    new-array v11, v0, [S

    .line 177
    .local v11, "newPos":[S
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v8, v0, [Z

    .line 178
    .local v8, "isUsed":[Z
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v22, v0

    .line 179
    .local v22, "zapRecords":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_0

    .line 180
    const/16 v23, 0x0

    aput-boolean v23, v8, v5

    .line 181
    int-to-short v0, v5

    move/from16 v23, v0

    aput-short v23, v11, v5

    .line 182
    const/16 v23, 0x0

    aput-boolean v23, v22, v5

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    :cond_0
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-object/from16 v21, v0

    .line 188
    .local v21, "xfrs":[Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    const/4 v5, 0x0

    :goto_1
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_1

    .line 189
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v23

    aput-object v23, v21, v5

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 197
    :cond_1
    const/16 v5, 0x15

    :goto_2
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_6

    .line 200
    const/4 v4, -0x1

    .line 201
    .local v4, "earlierDuplicate":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v5, :cond_3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_3

    .line 202
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v20

    .line 203
    .local v20, "xfCheck":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    aget-object v23, v21, v5

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 204
    move v4, v9

    .line 201
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 209
    .end local v20    # "xfCheck":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_3
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_4

    .line 210
    int-to-short v0, v4

    move/from16 v23, v0

    aput-short v23, v11, v5

    .line 211
    const/16 v23, 0x1

    aput-boolean v23, v22, v5

    .line 214
    :cond_4
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_5

    .line 215
    const/16 v23, 0x1

    aput-boolean v23, v8, v4

    .line 197
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 221
    .end local v4    # "earlierDuplicate":I
    .end local v9    # "j":I
    :cond_6
    const/16 v19, 0x0

    .local v19, "sheetNum":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v23

    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v18

    .line 223
    .local v18, "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/poi/ss/usermodel/Row;

    .line 224
    .local v17, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    .local v3, "cellI":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v2, v3

    .line 225
    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 226
    .local v2, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v14

    .line 227
    .local v14, "oldXf":S
    const/16 v23, 0x1

    aput-boolean v23, v8, v14

    goto :goto_5

    .line 221
    .end local v2    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v3    # "cellI":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v14    # "oldXf":S
    .end local v17    # "row":Lorg/apache/poi/ss/usermodel/Row;
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 232
    .end local v18    # "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_9
    const/16 v5, 0x15

    :goto_6
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_b

    .line 233
    aget-boolean v23, v8, v5

    if-nez v23, :cond_a

    .line 235
    const/16 v23, 0x1

    aput-boolean v23, v22, v5

    .line 236
    const/16 v23, 0x0

    aput-short v23, v11, v5

    .line 232
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 244
    :cond_b
    const/16 v5, 0x15

    :goto_7
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_e

    .line 247
    aget-short v15, v11, v5

    .line 248
    .local v15, "preDeletePos":S
    move v12, v15

    .line 249
    .local v12, "newPosition":S
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_8
    if-ge v9, v15, :cond_d

    .line 250
    aget-boolean v23, v22, v9

    if-eqz v23, :cond_c

    add-int/lit8 v23, v12, -0x1

    move/from16 v0, v23

    int-to-short v12, v0

    .line 249
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 254
    :cond_d
    aput-short v12, v11, v5

    .line 244
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 260
    .end local v9    # "j":I
    .end local v12    # "newPosition":S
    .end local v15    # "preDeletePos":S
    :cond_e
    array-length v10, v11

    .line 261
    .local v10, "max":I
    const/16 v16, 0x0

    .line 262
    .local v16, "removed":I
    const/16 v5, 0x15

    :goto_9
    if-ge v5, v10, :cond_10

    .line 263
    add-int v23, v5, v16

    aget-boolean v23, v22, v23

    if-eqz v23, :cond_f

    .line 264
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeExFormatRecord(I)V

    .line 265
    add-int/lit8 v5, v5, -0x1

    .line 266
    add-int/lit8 v10, v10, -0x1

    .line 267
    add-int/lit8 v16, v16, 0x1

    .line 262
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 272
    :cond_10
    const/16 v19, 0x0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v23

    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_13

    .line 273
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v18

    .line 274
    .restart local v18    # "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/poi/ss/usermodel/Row;

    .line 275
    .restart local v17    # "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface/range {v17 .. v17}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    .restart local v3    # "cellI":Lorg/apache/poi/ss/usermodel/Cell;
    move-object v2, v3

    .line 276
    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 277
    .restart local v2    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getXFIndex()S

    move-result v14

    .line 279
    .restart local v14    # "oldXf":S
    aget-short v23, v11, v14

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCellStyleAt(S)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v13

    .line 282
    .local v13, "newStyle":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    invoke-virtual {v2, v13}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    goto :goto_b

    .line 272
    .end local v2    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v3    # "cellI":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "newStyle":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .end local v14    # "oldXf":S
    .end local v17    # "row":Lorg/apache/poi/ss/usermodel/Row;
    :cond_12
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 286
    .end local v18    # "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_13
    return-void
.end method

.method public static optimiseFonts(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 23
    .param p0, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .prologue
    .line 53
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumberOfFontRecords()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v11, v0, [S

    .line 55
    .local v11, "newPos":[S
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Z

    move-object/from16 v20, v0

    .line 56
    .local v20, "zapRecords":[Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_0

    .line 57
    int-to-short v0, v7

    move/from16 v21, v0

    aput-short v21, v11, v7

    .line 58
    const/16 v21, 0x0

    aput-boolean v21, v20, v7

    .line 56
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 63
    :cond_0
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v6, v0, [Lorg/apache/poi/hssf/record/FontRecord;

    .line 64
    .local v6, "frecs":[Lorg/apache/poi/hssf/record/FontRecord;
    const/4 v7, 0x0

    :goto_1
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_2

    .line 66
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v7, v0, :cond_1

    .line 64
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v21

    aput-object v21, v6, v7

    goto :goto_2

    .line 76
    :cond_2
    const/4 v7, 0x5

    :goto_3
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_7

    .line 79
    const/4 v4, -0x1

    .line 80
    .local v4, "earlierDuplicate":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    if-ge v10, v7, :cond_5

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_5

    .line 81
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v10, v0, :cond_4

    .line 80
    :cond_3
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 83
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFontRecordAt(I)Lorg/apache/poi/hssf/record/FontRecord;

    move-result-object v5

    .line 84
    .local v5, "frCheck":Lorg/apache/poi/hssf/record/FontRecord;
    aget-object v21, v6, v7

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/apache/poi/hssf/record/FontRecord;->sameProperties(Lorg/apache/poi/hssf/record/FontRecord;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 85
    move v4, v10

    goto :goto_5

    .line 90
    .end local v5    # "frCheck":Lorg/apache/poi/hssf/record/FontRecord;
    :cond_5
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_6

    .line 91
    int-to-short v0, v4

    move/from16 v21, v0

    aput-short v21, v11, v7

    .line 92
    const/16 v21, 0x1

    aput-boolean v21, v20, v7

    .line 76
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 100
    .end local v4    # "earlierDuplicate":I
    .end local v10    # "j":I
    :cond_7
    const/4 v7, 0x5

    :goto_6
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_a

    .line 103
    aget-short v13, v11, v7

    .line 104
    .local v13, "preDeletePos":S
    move v12, v13

    .line 105
    .local v12, "newPosition":S
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_7
    if-ge v10, v13, :cond_9

    .line 106
    aget-boolean v21, v20, v10

    if-eqz v21, :cond_8

    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    int-to-short v12, v0

    .line 105
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 110
    :cond_9
    aput-short v12, v11, v7

    .line 100
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 114
    .end local v10    # "j":I
    .end local v12    # "newPosition":S
    .end local v13    # "preDeletePos":S
    :cond_a
    const/4 v7, 0x5

    :goto_8
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_c

    .line 115
    aget-boolean v21, v20, v7

    if-eqz v21, :cond_b

    .line 116
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v21

    aget-object v22, v6, v7

    invoke-virtual/range {v21 .. v22}, Lorg/apache/poi/hssf/model/InternalWorkbook;->removeFontRecord(Lorg/apache/poi/hssf/record/FontRecord;)V

    .line 114
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 124
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->resetFontCache()V

    .line 128
    const/4 v7, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumExFormats()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_d

    .line 129
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v19

    .line 130
    .local v19, "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v21

    aget-short v21, v11, v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->setFontIndex(S)V

    .line 128
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 139
    .end local v19    # "xfr":Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    :cond_d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 140
    .local v3, "doneUnicodeStrings":Ljava/util/HashSet;, "Ljava/util/HashSet<Lorg/apache/poi/hssf/record/common/UnicodeString;>;"
    const/16 v17, 0x0

    .end local v7    # "i":I
    .local v17, "sheetNum":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    .line 141
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v16

    .line 142
    .local v16, "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/poi/ss/usermodel/Row;

    .line 143
    .local v14, "row":Lorg/apache/poi/ss/usermodel/Row;
    invoke-interface {v14}, Lorg/apache/poi/ss/usermodel/Row;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    .line 144
    .local v2, "cell":Lorg/apache/poi/ss/usermodel/Cell;
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 145
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v15

    check-cast v15, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 146
    .local v15, "rtr":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v15}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getRawUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v18

    .line 149
    .local v18, "u":Lorg/apache/poi/hssf/record/common/UnicodeString;
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 151
    const/4 v7, 0x5

    .local v7, "i":S
    :goto_c
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_11

    .line 152
    aget-short v21, v11, v7

    move/from16 v0, v21

    if-eq v7, v0, :cond_10

    .line 153
    aget-short v21, v11, v7

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->swapFontUse(SS)V

    .line 151
    :cond_10
    add-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    int-to-short v7, v0

    goto :goto_c

    .line 158
    :cond_11
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 140
    .end local v2    # "cell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v7    # "i":S
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "row":Lorg/apache/poi/ss/usermodel/Row;
    .end local v15    # "rtr":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v18    # "u":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_12
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 164
    .end local v16    # "s":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_13
    return-void
.end method
