.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# instance fields
.field private ch:C

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 618
    return-void
.end method

.method static isDigitFirst(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1154
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method accept(C)V
    .locals 3
    .param p1, "expect"    # C

    .prologue
    .line 1273
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, p1, :cond_0

    .line 1274
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1278
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1280
    :cond_1
    return-void
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 23
    .param p1, "indexText"    # Ljava/lang/String;

    .prologue
    .line 1313
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1314
    .local v10, "indexTextLen":I
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1315
    .local v7, "firstChar":C
    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1317
    .local v14, "lastChar":C
    const/16 v20, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1319
    .local v4, "commaIndex":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    const/16 v20, 0x27

    move/from16 v0, v20

    if-ne v7, v0, :cond_2

    const/16 v20, 0x27

    move/from16 v0, v20

    if-ne v14, v0, :cond_2

    .line 1321
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_0

    .line 1322
    const/16 v20, 0x1

    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1323
    .local v15, "propertyName":Ljava/lang/String;
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    .line 1398
    .end local v15    # "propertyName":Ljava/lang/String;
    :goto_0
    return-object v20

    .line 1326
    :cond_0
    const-string v20, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1327
    .local v12, "indexesText":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1328
    .local v16, "propertyNames":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 1329
    aget-object v13, v12, v8

    .line 1330
    .local v13, "indexesTextItem":Ljava/lang/String;
    const/16 v20, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v16, v8

    .line 1328
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1333
    .end local v13    # "indexesTextItem":Ljava/lang/String;
    :cond_1
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    .end local v8    # "i":I
    .end local v12    # "indexesText":[Ljava/lang/String;
    .end local v16    # "propertyNames":[Ljava/lang/String;
    :cond_2
    const/16 v20, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1338
    .local v3, "colonIndex":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_4

    .line 1339
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1341
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1342
    .local v9, "index":I
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1343
    .end local v9    # "index":I
    :catch_0
    move-exception v6

    .line 1344
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1347
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1351
    :cond_4
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_6

    .line 1352
    const-string v20, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1353
    .restart local v12    # "indexesText":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v11, v0, [I

    .line 1354
    .local v11, "indexes":[I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_5

    .line 1355
    aget-object v20, v12, v8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aput v20, v11, v8

    .line 1354
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1357
    :cond_5
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;-><init>([I)V

    goto/16 :goto_0

    .line 1360
    .end local v8    # "i":I
    .end local v11    # "indexes":[I
    .end local v12    # "indexesText":[Ljava/lang/String;
    :cond_6
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_e

    .line 1361
    const-string v20, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1362
    .restart local v12    # "indexesText":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v11, v0, [I

    .line 1363
    .restart local v11    # "indexes":[I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_9

    .line 1364
    aget-object v19, v12, v8

    .line 1365
    .local v19, "str":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_8

    .line 1366
    if-nez v8, :cond_7

    .line 1367
    const/16 v20, 0x0

    aput v20, v11, v8

    .line 1363
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1369
    :cond_7
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v20

    .line 1372
    :cond_8
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aput v20, v11, v8

    goto :goto_4

    .line 1376
    .end local v19    # "str":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x0

    aget v17, v11, v20

    .line 1378
    .local v17, "start":I
    array-length v0, v11

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 1379
    const/16 v20, 0x1

    aget v5, v11, v20

    .line 1384
    .local v5, "end":I
    :goto_5
    array-length v0, v11

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1385
    const/16 v20, 0x2

    aget v18, v11, v20

    .line 1390
    .local v18, "step":I
    :goto_6
    if-ltz v5, :cond_c

    move/from16 v0, v17

    if-ge v5, v0, :cond_c

    .line 1391
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "end must greater than or equals start. start "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",  end "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1381
    .end local v5    # "end":I
    .end local v18    # "step":I
    :cond_a
    const/4 v5, -0x1

    .restart local v5    # "end":I
    goto :goto_5

    .line 1387
    :cond_b
    const/16 v18, 0x1

    .restart local v18    # "step":I
    goto :goto_6

    .line 1395
    :cond_c
    if-gtz v18, :cond_d

    .line 1396
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "step must greater than zero : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1398
    :cond_d
    new-instance v20, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/fastjson/JSONPath$RangeSegement;-><init>(III)V

    goto/16 :goto_0

    .line 1401
    .end local v5    # "end":I
    .end local v8    # "i":I
    .end local v11    # "indexes":[I
    .end local v12    # "indexesText":[Ljava/lang/String;
    .end local v17    # "start":I
    .end local v18    # "step":I
    :cond_e
    new-instance v20, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v20
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1283
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1284
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1287
    :cond_1
    const/16 v4, 0x8

    new-array v1, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1290
    .local v1, "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v2

    .line 1291
    .local v2, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-nez v2, :cond_2

    .line 1303
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v5, v1

    if-ne v4, v5, :cond_4

    .line 1309
    .end local v1    # "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_1
    return-object v1

    .line 1295
    .restart local v1    # "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_2
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v5, v1

    if-ne v4, v5, :cond_3

    .line 1296
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1297
    .local v3, "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    move-object v1, v3

    .line 1300
    .end local v3    # "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v2, v1, v4

    goto :goto_0

    .line 1307
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    new-array v0, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1308
    .local v0, "result":[Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v1, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 1309
    goto :goto_1
.end method

.method isEOF()Z
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method next()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 622
    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 43
    .param p1, "acceptBracket"    # Z

    .prologue
    .line 724
    if-eqz p1, :cond_0

    .line 725
    const/16 v6, 0x5b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 728
    :cond_0
    const/16 v32, 0x0

    .line 730
    .local v32, "predicateFlag":Z
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_2

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 732
    const/16 v6, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 733
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x40

    if-ne v6, v7, :cond_1

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 735
    const/16 v6, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 738
    :cond_1
    const/16 v32, 0x1

    .line 741
    :cond_2
    if-nez v32, :cond_3

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v6}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 742
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v5

    .line 744
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 746
    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x29

    if-ne v6, v7, :cond_6

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 748
    if-eqz p1, :cond_4

    .line 749
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 752
    :cond_4
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    .line 1095
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v34

    .line 755
    .restart local v5    # "propertyName":Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_7

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 757
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto :goto_0

    .line 760
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v30

    .line 762
    .local v30, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 764
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_8

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_e

    .line 765
    :cond_8
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_9

    const/4 v10, 0x1

    .line 767
    .local v10, "not":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v36

    .line 769
    .local v36, "startValue":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v29

    .line 771
    .local v29, "name":Ljava/lang/String;
    const-string v6, "and"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 772
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 765
    .end local v10    # "not":Z
    .end local v29    # "name":Ljava/lang/String;
    .end local v36    # "startValue":Ljava/lang/Object;
    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 775
    .restart local v10    # "not":Z
    .restart local v29    # "name":Ljava/lang/String;
    .restart local v36    # "startValue":Ljava/lang/Object;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v21

    .line 777
    .local v21, "endValue":Ljava/lang/Object;
    if-eqz v36, :cond_b

    if-nez v21, :cond_c

    .line 778
    :cond_b
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 781
    :cond_c
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 782
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    check-cast v36, Ljava/lang/Number;

    .end local v36    # "startValue":Ljava/lang/Object;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    check-cast v21, Ljava/lang/Number;

    .line 783
    .end local v21    # "endValue":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;JJZ)V

    .line 784
    .local v4, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 787
    .end local v4    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .restart local v21    # "endValue":Ljava/lang/Object;
    .restart local v36    # "startValue":Ljava/lang/Object;
    :cond_d
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 790
    .end local v10    # "not":Z
    .end local v21    # "endValue":Ljava/lang/Object;
    .end local v29    # "name":Ljava/lang/String;
    .end local v36    # "startValue":Ljava/lang/Object;
    :cond_e
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_f

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_24

    .line 791
    :cond_f
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_13

    const/4 v10, 0x1

    .line 792
    .restart local v10    # "not":Z
    :goto_2
    const/16 v6, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 794
    new-instance v39, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct/range {v39 .. v39}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 796
    .local v39, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v40

    .line 797
    .local v40, "value":Ljava/lang/Object;
    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 801
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_14

    .line 810
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 811
    if-eqz v32, :cond_10

    .line 812
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 815
    :cond_10
    if-eqz p1, :cond_11

    .line 816
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 820
    :cond_11
    const/16 v24, 0x1

    .line 821
    .local v24, "isInt":Z
    const/16 v25, 0x1

    .line 822
    .local v25, "isIntObj":Z
    const/16 v26, 0x1

    .line 823
    .local v26, "isString":Z
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    .line 824
    .local v27, "item":Ljava/lang/Object;
    if-nez v27, :cond_15

    .line 825
    if-eqz v24, :cond_12

    .line 826
    const/16 v24, 0x0

    goto :goto_4

    .line 791
    .end local v10    # "not":Z
    .end local v24    # "isInt":Z
    .end local v25    # "isIntObj":Z
    .end local v26    # "isString":Z
    .end local v27    # "item":Ljava/lang/Object;
    .end local v39    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v40    # "value":Ljava/lang/Object;
    :cond_13
    const/4 v10, 0x0

    goto :goto_2

    .line 804
    .restart local v10    # "not":Z
    .restart local v39    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v40    # "value":Ljava/lang/Object;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v40

    .line 807
    invoke-interface/range {v39 .. v40}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 831
    .restart local v24    # "isInt":Z
    .restart local v25    # "isIntObj":Z
    .restart local v26    # "isString":Z
    .restart local v27    # "item":Ljava/lang/Object;
    :cond_15
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 832
    .local v17, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v24, :cond_16

    const-class v7, Ljava/lang/Byte;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_16

    const-class v7, Ljava/lang/Short;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_16

    const-class v7, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_16

    const-class v7, Ljava/lang/Long;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_16

    .line 834
    const/16 v24, 0x0

    .line 835
    const/16 v25, 0x0

    .line 838
    :cond_16
    if-eqz v26, :cond_12

    const-class v7, Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v7, :cond_12

    .line 839
    const/16 v26, 0x0

    goto :goto_4

    .line 843
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v27    # "item":Ljava/lang/Object;
    :cond_17
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_19

    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_19

    .line 844
    if-eqz v10, :cond_18

    .line 845
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 847
    :cond_18
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 851
    :cond_19
    if-eqz v24, :cond_1d

    .line 852
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b

    .line 853
    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v40

    .line 854
    .local v40, "value":J
    if-eqz v10, :cond_1a

    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 855
    .local v23, "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_5
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    invoke-direct {v6, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 854
    .end local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_1a
    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_5

    .line 858
    .local v40, "value":Ljava/lang/Object;
    :cond_1b
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [J

    move-object/from16 v42, v0

    .line 859
    .local v42, "values":[J
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_6
    move-object/from16 v0, v42

    array-length v6, v0

    move/from16 v0, v22

    if-ge v0, v6, :cond_1c

    .line 860
    move-object/from16 v0, v39

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    aput-wide v6, v42, v22

    .line 859
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 863
    :cond_1c
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    move-object/from16 v0, v42

    invoke-direct {v6, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;[JZ)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 866
    .end local v22    # "i":I
    .end local v42    # "values":[J
    :cond_1d
    if-eqz v26, :cond_20

    .line 867
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    .line 868
    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "value":Ljava/lang/Object;
    check-cast v40, Ljava/lang/String;

    .line 870
    .local v40, "value":Ljava/lang/String;
    if-eqz v10, :cond_1e

    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 871
    .restart local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_7
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-direct {v6, v5, v0, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 870
    .end local v23    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_1e
    sget-object v23, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_7

    .line 874
    .local v40, "value":Ljava/lang/Object;
    :cond_1f
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 875
    .local v42, "values":[Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 877
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    move-object/from16 v0, v42

    invoke-direct {v6, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 880
    .end local v42    # "values":[Ljava/lang/String;
    :cond_20
    if-eqz v25, :cond_23

    .line 881
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/Long;

    move-object/from16 v42, v0

    .line 882
    .local v42, "values":[Ljava/lang/Long;
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_8
    move-object/from16 v0, v42

    array-length v6, v0

    move/from16 v0, v22

    if-ge v0, v6, :cond_22

    .line 883
    move-object/from16 v0, v39

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Number;

    .line 884
    .local v27, "item":Ljava/lang/Number;
    if-eqz v27, :cond_21

    .line 885
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v42, v22

    .line 882
    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 889
    .end local v27    # "item":Ljava/lang/Number;
    :cond_22
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    move-object/from16 v0, v42

    invoke-direct {v6, v5, v0, v10}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 892
    .end local v22    # "i":I
    .end local v42    # "values":[Ljava/lang/Long;
    :cond_23
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 895
    .end local v10    # "not":Z
    .end local v24    # "isInt":Z
    .end local v25    # "isIntObj":Z
    .end local v26    # "isString":Z
    .end local v39    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v40    # "value":Ljava/lang/Object;
    :cond_24
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x27

    if-eq v6, v7, :cond_25

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x22

    if-ne v6, v7, :cond_36

    .line 896
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v37

    .line 897
    .local v37, "strValue":Ljava/lang/String;
    if-eqz v32, :cond_26

    .line 898
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 901
    :cond_26
    if-eqz p1, :cond_27

    .line 902
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 905
    :cond_27
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_28

    .line 906
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v7, 0x0

    move-object/from16 v0, v37

    invoke-direct {v6, v5, v0, v7}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 909
    :cond_28
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_29

    .line 910
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v7, 0x1

    move-object/from16 v0, v37

    invoke-direct {v6, v5, v0, v7}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 913
    :cond_29
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_2a

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_2c

    .line 914
    :cond_2a
    :goto_9
    const-string v6, "%%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2b

    .line 915
    const-string v6, "%%"

    const-string v7, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    goto :goto_9

    .line 918
    :cond_2b
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_2d

    const/4 v10, 0x1

    .line 920
    .restart local v10    # "not":Z
    :goto_a
    const/16 v6, 0x25

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    .line 921
    .local v31, "p0":I
    const/4 v6, -0x1

    move/from16 v0, v31

    if-ne v0, v6, :cond_2f

    .line 922
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_2e

    .line 923
    sget-object v30, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 966
    .end local v10    # "not":Z
    .end local v31    # "p0":I
    :cond_2c
    :goto_b
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-direct {v6, v5, v0, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 918
    :cond_2d
    const/4 v10, 0x0

    goto :goto_a

    .line 925
    .restart local v10    # "not":Z
    .restart local v31    # "p0":I
    :cond_2e
    sget-object v30, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b

    .line 928
    :cond_2f
    const-string v6, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 930
    .local v28, "items":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 931
    .local v13, "startsWithValue":Ljava/lang/String;
    const/4 v14, 0x0

    .line 932
    .local v14, "endsWithValue":Ljava/lang/String;
    const/4 v15, 0x0

    .line 933
    .local v15, "containsValues":[Ljava/lang/String;
    if-nez v31, :cond_32

    .line 934
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_31

    .line 935
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    new-array v15, v6, [Ljava/lang/String;

    .line 936
    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v8, v15

    move-object/from16 v0, v28

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 960
    :cond_30
    :goto_c
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v11, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object v12, v5

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 938
    :cond_31
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v14, v28, v6

    .line 939
    move-object/from16 v0, v28

    array-length v6, v0

    const/4 v7, 0x2

    if-le v6, v7, :cond_30

    .line 940
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    new-array v15, v6, [Ljava/lang/String;

    .line 941
    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v8, v15

    move-object/from16 v0, v28

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 944
    :cond_32
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_33

    .line 945
    move-object/from16 v15, v28

    goto :goto_c

    .line 947
    :cond_33
    move-object/from16 v0, v28

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_34

    .line 948
    const/4 v6, 0x0

    aget-object v13, v28, v6

    goto :goto_c

    .line 949
    :cond_34
    move-object/from16 v0, v28

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_35

    .line 950
    const/4 v6, 0x0

    aget-object v13, v28, v6

    .line 951
    const/4 v6, 0x1

    aget-object v14, v28, v6

    goto :goto_c

    .line 953
    :cond_35
    const/4 v6, 0x0

    aget-object v13, v28, v6

    .line 954
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v14, v28, v6

    .line 955
    move-object/from16 v0, v28

    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    new-array v15, v6, [Ljava/lang/String;

    .line 956
    const/4 v6, 0x1

    const/4 v7, 0x0

    array-length v8, v15

    move-object/from16 v0, v28

    invoke-static {v0, v6, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 969
    .end local v10    # "not":Z
    .end local v13    # "startsWithValue":Ljava/lang/String;
    .end local v14    # "endsWithValue":Ljava/lang/String;
    .end local v15    # "containsValues":[Ljava/lang/String;
    .end local v28    # "items":[Ljava/lang/String;
    .end local v31    # "p0":I
    .end local v37    # "strValue":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v40

    .line 971
    .local v40, "value":J
    const-wide/16 v18, 0x0

    .line 972
    .local v18, "doubleValue":D
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_37

    .line 973
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v18

    .line 977
    :cond_37
    if-eqz v32, :cond_38

    .line 978
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 981
    :cond_38
    if-eqz p1, :cond_39

    .line 982
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 985
    :cond_39
    const-wide/16 v6, 0x0

    cmpl-double v6, v18, v6

    if-nez v6, :cond_3a

    .line 986
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-wide/from16 v0, v40

    move-object/from16 v2, v30

    invoke-direct {v6, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 988
    :cond_3a
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    move-wide/from16 v0, v18

    move-object/from16 v2, v30

    invoke-direct {v6, v5, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 992
    .end local v18    # "doubleValue":D
    .end local v40    # "value":J
    :cond_3b
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x6e

    if-ne v6, v7, :cond_3f

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v29

    .line 994
    .restart local v29    # "name":Ljava/lang/String;
    const-string v6, "null"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 995
    if-eqz v32, :cond_3c

    .line 996
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 998
    :cond_3c
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1000
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_3d

    .line 1001
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 1004
    :cond_3d
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_3e

    .line 1005
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 1008
    :cond_3e
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 1010
    .end local v29    # "name":Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x74

    if-ne v6, v7, :cond_43

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v29

    .line 1013
    .restart local v29    # "name":Ljava/lang/String;
    const-string/jumbo v6, "true"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1014
    if-eqz v32, :cond_40

    .line 1015
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1017
    :cond_40
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1019
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_41

    .line 1020
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 1023
    :cond_41
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_42

    .line 1024
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 1027
    :cond_42
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 1029
    .end local v29    # "name":Ljava/lang/String;
    :cond_43
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x66

    if-ne v6, v7, :cond_47

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v29

    .line 1032
    .restart local v29    # "name":Ljava/lang/String;
    const-string v6, "false"

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1033
    if-eqz v32, :cond_44

    .line 1034
    const/16 v6, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1036
    :cond_44
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1038
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_45

    .line 1039
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 1042
    :cond_45
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_46

    .line 1043
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 1046
    :cond_46
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 1050
    .end local v29    # "name":Ljava/lang/String;
    :cond_47
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 1054
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v30    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_48
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v35, v6, -0x1

    .line 1055
    .local v35, "start":I
    :goto_d
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_49

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v6

    if-nez v6, :cond_49

    .line 1056
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_4b

    if-nez v32, :cond_4b

    if-nez v32, :cond_4b

    .line 1069
    :cond_49
    if-eqz p1, :cond_4d

    .line 1070
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v20, v6, -0x1

    .line 1079
    .local v20, "end":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    move/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    .line 1081
    .local v38, "text":Ljava/lang/String;
    const-string v6, "\\."

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_50

    .line 1082
    const-string v6, "\\\\\\."

    const-string v7, "\\."

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1083
    .local v33, "propName":Ljava/lang/String;
    const-string v6, "\\-"

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4a

    .line 1084
    const-string v6, "\\\\-"

    const-string v7, "-"

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1086
    :cond_4a
    new-instance v34, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1062
    .end local v20    # "end":I
    .end local v33    # "propName":Ljava/lang/String;
    .end local v38    # "text":Ljava/lang/String;
    :cond_4b
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_4c

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1065
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_d

    .line 1072
    :cond_4d
    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_4e

    move-object/from16 v0, p0

    iget-char v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_4f

    .line 1073
    :cond_4e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v20, v6, -0x1

    .restart local v20    # "end":I
    goto :goto_e

    .line 1075
    .end local v20    # "end":I
    :cond_4f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    move/from16 v20, v0

    .restart local v20    # "end":I
    goto :goto_e

    .line 1089
    .restart local v38    # "text":Ljava/lang/String;
    :cond_50
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v34

    .line 1091
    .local v34, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-eqz p1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1092
    const/16 v6, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_0
.end method

.method protected readDoubleValue(J)D
    .locals 9
    .param p1, "longValue"    # J

    .prologue
    .line 1115
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 1117
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1118
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x30

    if-lt v3, v6, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x39

    if-gt v3, v6, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1122
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v3, -0x1

    .line 1123
    .local v1, "endIndex":I
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1125
    .local v4, "value":D
    long-to-double v6, p1

    add-double/2addr v4, v6

    .line 1126
    return-wide v4
.end method

.method protected readLongValue()J
    .locals 7

    .prologue
    .line 1099
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 1100
    .local v0, "beginIndex":I
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_1

    .line 1101
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1104
    :cond_1
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x30

    if-lt v3, v6, :cond_2

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x39

    if-gt v3, v6, :cond_2

    .line 1105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1108
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v3, -0x1

    .line 1109
    .local v1, "endIndex":I
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1111
    .local v4, "value":J
    return-wide v4
.end method

.method readName()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x5c

    .line 1221
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1223
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1224
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illeal jsonpath syntax. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1227
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1228
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1229
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v4, :cond_4

    .line 1230
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1231
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1247
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1248
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1251
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1253
    .local v2, "propertyName":Ljava/lang/String;
    return-object v2

    .line 1235
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1239
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v1

    .line 1240
    .local v1, "identifierFlag":Z
    if-eqz v1, :cond_1

    .line 1243
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 1158
    const/4 v1, 0x0

    .line 1159
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_2

    .line 1160
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1161
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1184
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1185
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "name":Ljava/lang/String;
    const-string v2, "not"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1188
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1190
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1192
    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1193
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1217
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 1162
    :cond_2
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x21

    if-ne v2, v3, :cond_3

    .line 1163
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1164
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1165
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1166
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_5

    .line 1167
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1168
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_4

    .line 1169
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1170
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1172
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1174
    :cond_5
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 1175
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1176
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_6

    .line 1177
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1178
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1180
    :cond_6
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1194
    .restart local v0    # "name":Ljava/lang/String;
    :cond_7
    const-string v2, "rlike"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1195
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1196
    :cond_8
    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1197
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1198
    :cond_9
    const-string v2, "between"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1199
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1201
    :cond_a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1204
    :cond_b
    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1205
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1206
    :cond_c
    const-string v2, "rlike"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1207
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1208
    :cond_d
    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1209
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1210
    :cond_e
    const-string v2, "between"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1211
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1213
    :cond_f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 11

    .prologue
    const/16 v10, 0x5b

    const/16 v9, 0x2a

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x2e

    .line 629
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 630
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v2, v4, -0x30

    .line 632
    .local v2, "index":I
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v4, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    .line 709
    .end local v2    # "index":I
    :goto_0
    return-object v4

    .line 633
    :cond_0
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x61

    if-lt v4, v5, :cond_1

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x7a

    if-le v4, v5, :cond_2

    :cond_1
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_3

    .line 634
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 637
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_12

    .line 638
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 640
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x24

    if-ne v4, v5, :cond_4

    .line 641
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_1

    .line 645
    :cond_4
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v6, :cond_5

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_f

    .line 646
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 647
    .local v0, "c0":I
    const/4 v1, 0x0

    .line 648
    .local v1, "deep":Z
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 649
    if-ne v0, v6, :cond_6

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v6, :cond_6

    .line 650
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 651
    const/4 v1, 0x1

    .line 652
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v5, v5, 0x3

    if-le v4, v5, :cond_6

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v10, :cond_6

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 654
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_6

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    .line 655
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v5, v5, 0x2

    .line 656
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_6

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 659
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 660
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 663
    :cond_6
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v9, :cond_8

    .line 664
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_7

    .line 665
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 668
    :cond_7
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    goto/16 :goto_0

    .line 671
    :cond_8
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 672
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v4

    goto/16 :goto_0

    .line 675
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "propertyName":Ljava/lang/String;
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x28

    if-ne v4, v5, :cond_e

    .line 677
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 678
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x29

    if-ne v4, v5, :cond_d

    .line 679
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_a

    .line 680
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 683
    :cond_a
    const-string v4, "size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 684
    :cond_b
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    goto/16 :goto_0

    .line 687
    :cond_c
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support jsonpath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 690
    :cond_d
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support jsonpath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 693
    :cond_e
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v4, v3, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 696
    .end local v0    # "c0":I
    .end local v1    # "deep":Z
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_f
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v10, :cond_10

    .line 697
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v4

    goto/16 :goto_0

    .line 700
    :cond_10
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v4, :cond_11

    .line 701
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 703
    .restart local v3    # "propertyName":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v4, v3, v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 706
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_11
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support jsonpath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 709
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1257
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1258
    .local v1, "quoate":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1260
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 1261
    .local v0, "beginIndex":I
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1265
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    :goto_1
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1267
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1269
    return-object v2

    .line 1265
    .end local v2    # "strValue":Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method protected readValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1132
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1144
    :goto_0
    return-object v1

    .line 1136
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 1137
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1140
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    .line 1141
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "name":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1144
    const/4 v1, 0x0

    goto :goto_0

    .line 1146
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1150
    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 714
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-gt v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, v2, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 721
    :cond_1
    return-void
.end method
