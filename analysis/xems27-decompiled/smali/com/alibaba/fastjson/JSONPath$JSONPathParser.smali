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

    .line 1154
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method accept(C)V
    .locals 3
    .param p1, "expect"    # C

    .line 1273
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, p1, :cond_1

    .line 1277
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1280
    :cond_0
    return-void

    .line 1274
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 13
    .param p1, "indexText"    # Ljava/lang/String;

    .line 1313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1314
    .local v0, "indexTextLen":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1315
    .local v2, "firstChar":C
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1317
    .local v3, "lastChar":C
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1319
    .local v4, "commaIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ","

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-le v5, v7, :cond_2

    const/16 v5, 0x27

    if-ne v2, v5, :cond_2

    if-ne v3, v5, :cond_2

    .line 1321
    if-ne v4, v8, :cond_0

    .line 1322
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1323
    .local v5, "propertyName":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v6, v5, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v6

    .line 1326
    .end local v5    # "propertyName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, "indexesText":[Ljava/lang/String;
    array-length v5, v1

    new-array v5, v5, [Ljava/lang/String;

    .line 1328
    .local v5, "propertyNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_1

    .line 1329
    aget-object v7, v1, v6

    .line 1330
    .local v7, "indexesTextItem":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 1328
    .end local v7    # "indexesTextItem":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1333
    .end local v6    # "i":I
    :cond_1
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;-><init>([Ljava/lang/String;)V

    return-object v6

    .line 1336
    .end local v1    # "indexesText":[Ljava/lang/String;
    .end local v5    # "propertyNames":[Ljava/lang/String;
    :cond_2
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1338
    .local v5, "colonIndex":I
    if-ne v4, v8, :cond_4

    if-ne v5, v8, :cond_4

    .line 1339
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1341
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1342
    .local v6, "index":I
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 1343
    .end local v6    # "index":I
    :catch_0
    move-exception v6

    .line 1344
    .local v6, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v7, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v7

    .line 1347
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v6, p1, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v6

    .line 1351
    :cond_4
    if-eq v4, v8, :cond_6

    .line 1352
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1353
    .restart local v1    # "indexesText":[Ljava/lang/String;
    array-length v6, v1

    new-array v6, v6, [I

    .line 1354
    .local v6, "indexes":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v1

    if-ge v7, v8, :cond_5

    .line 1355
    aget-object v8, v1, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 1354
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1357
    .end local v7    # "i":I
    :cond_5
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;-><init>([I)V

    return-object v7

    .line 1360
    .end local v1    # "indexesText":[Ljava/lang/String;
    .end local v6    # "indexes":[I
    :cond_6
    if-eq v5, v8, :cond_f

    .line 1361
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1362
    .local v6, "indexesText":[Ljava/lang/String;
    array-length v8, v6

    new-array v8, v8, [I

    .line 1363
    .local v8, "indexes":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, v6

    if-ge v10, v11, :cond_9

    .line 1364
    aget-object v11, v6, v10

    .line 1365
    .local v11, "str":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_8

    .line 1366
    if-nez v10, :cond_7

    .line 1367
    aput v1, v8, v10

    goto :goto_3

    .line 1369
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 1372
    :cond_8
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aput v12, v8, v10

    .line 1363
    .end local v11    # "str":Ljava/lang/String;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1376
    .end local v10    # "i":I
    :cond_9
    aget v1, v8, v1

    .line 1378
    .local v1, "start":I
    array-length v10, v8

    if-le v10, v9, :cond_a

    .line 1379
    aget v9, v8, v9

    .local v9, "end":I
    goto :goto_4

    .line 1381
    .end local v9    # "end":I
    :cond_a
    const/4 v9, -0x1

    .line 1384
    .restart local v9    # "end":I
    :goto_4
    array-length v10, v8

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    .line 1385
    aget v7, v8, v7

    .local v7, "step":I
    goto :goto_5

    .line 1387
    .end local v7    # "step":I
    :cond_b
    const/4 v7, 0x1

    .line 1390
    .restart local v7    # "step":I
    :goto_5
    if-ltz v9, :cond_d

    if-lt v9, v1, :cond_c

    goto :goto_6

    .line 1391
    :cond_c
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "end must greater than or equals start. start "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",  end "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1395
    :cond_d
    :goto_6
    if-lez v7, :cond_e

    .line 1398
    new-instance v10, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    invoke-direct {v10, v1, v9, v7}, Lcom/alibaba/fastjson/JSONPath$RangeSegement;-><init>(III)V

    return-object v10

    .line 1396
    :cond_e
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "step must greater than zero : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1401
    .end local v1    # "start":I
    .end local v6    # "indexesText":[Ljava/lang/String;
    .end local v7    # "step":I
    .end local v8    # "indexes":[I
    .end local v9    # "end":I
    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 5

    .line 1283
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1287
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1290
    .local v0, "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v1

    .line 1291
    .local v1, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1292
    nop

    .line 1303
    .end local v1    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v3, v0

    if-ne v1, v3, :cond_0

    .line 1304
    return-object v0

    .line 1307
    :cond_0
    new-array v3, v1, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1308
    .local v3, "result":[Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1309
    return-object v3

    .line 1295
    .end local v3    # "result":[Lcom/alibaba/fastjson/JSONPath$Segement;
    .restart local v1    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v4, v0

    if-ne v3, v4, :cond_2

    .line 1296
    mul-int/lit8 v4, v3, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1297
    .local v4, "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1298
    move-object v0, v4

    .line 1300
    .end local v4    # "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v1, v0, v2

    .line 1301
    .end local v1    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    goto :goto_0

    .line 1284
    .end local v0    # "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method isEOF()Z
    .locals 2

    .line 625
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method next()V
    .locals 3

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
    .locals 18
    .param p1, "acceptBracket"    # Z

    .line 724
    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    .line 725
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 728
    :cond_0
    const/4 v1, 0x0

    .line 730
    .local v1, "predicateFlag":Z
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3f

    const/16 v4, 0x28

    const/16 v5, 0x2e

    if-ne v2, v3, :cond_2

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 732
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 733
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 735
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 738
    :cond_1
    const/4 v1, 0x1

    .line 741
    :cond_2
    const/4 v2, -0x1

    const/16 v3, 0x5d

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v8}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_4

    .line 1054
    :cond_3
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v4, v7

    .line 1055
    .local v4, "start":I
    :goto_0
    iget-char v8, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v9, 0x2f

    if-eq v8, v3, :cond_6

    if-eq v8, v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1056
    iget-char v8, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v8, v5, :cond_4

    if-nez v1, :cond_4

    if-nez v1, :cond_4

    .line 1059
    goto :goto_1

    .line 1062
    :cond_4
    iget-char v8, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_5

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1065
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1069
    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 1070
    iget v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v5, v7

    .local v5, "end":I
    goto :goto_3

    .line 1072
    .end local v5    # "end":I
    :cond_7
    iget-char v8, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v8, v9, :cond_9

    if-ne v8, v5, :cond_8

    goto :goto_2

    .line 1075
    :cond_8
    iget v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .restart local v5    # "end":I
    goto :goto_3

    .line 1073
    .end local v5    # "end":I
    :cond_9
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    sub-int/2addr v5, v7

    .line 1079
    .restart local v5    # "end":I
    :goto_3
    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1081
    .local v7, "text":Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v2, :cond_b

    .line 1082
    const-string v3, "\\\\\\."

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    .local v3, "propName":Ljava/lang/String;
    const-string v8, "\\-"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v2, :cond_a

    .line 1084
    const-string v2, "\\\\-"

    const-string v8, "-"

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1086
    :cond_a
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v2, v3, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 1089
    .end local v3    # "propName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v2

    .line 1091
    .local v2, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-eqz p1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1092
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1095
    :cond_c
    return-object v2

    .line 742
    .end local v2    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v7    # "text":Ljava/lang/String;
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v15

    .line 744
    .local v15, "propertyName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 746
    const/16 v8, 0x29

    if-eqz v1, :cond_f

    iget-char v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v9, v8, :cond_f

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 748
    if-eqz p1, :cond_e

    .line 749
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 752
    :cond_e
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v3, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v2

    .line 755
    :cond_f
    if-eqz p1, :cond_10

    iget-char v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v9, v3, :cond_10

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 757
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v3, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v3, v15}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v2

    .line 760
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v14

    .line 762
    .local v14, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 764
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v14, v9, :cond_4f

    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v9, :cond_11

    goto/16 :goto_14

    .line 790
    :cond_11
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v14, v9, :cond_39

    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v9, :cond_12

    goto/16 :goto_c

    .line 895
    :cond_12
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v9, 0x27

    if-eq v4, v9, :cond_28

    const/16 v9, 0x22

    if-ne v4, v9, :cond_13

    goto/16 :goto_7

    .line 969
    :cond_13
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v6

    .line 971
    .local v6, "value":J
    const-wide/16 v9, 0x0

    .line 972
    .local v9, "doubleValue":D
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v5, :cond_14

    .line 973
    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v9

    .line 977
    :cond_14
    if-eqz v1, :cond_15

    .line 978
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 981
    :cond_15
    if-eqz p1, :cond_16

    .line 982
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 985
    :cond_16
    const-wide/16 v2, 0x0

    cmpl-double v4, v9, v2

    if-nez v4, :cond_17

    .line 986
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v3, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    invoke-direct {v3, v15, v6, v7, v14}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v2

    .line 988
    :cond_17
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v3, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    invoke-direct {v3, v15, v9, v10, v14}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v2

    .line 992
    .end local v6    # "value":J
    .end local v9    # "doubleValue":D
    :cond_18
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x6e

    if-ne v2, v4, :cond_1d

    .line 993
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "name":Ljava/lang/String;
    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 995
    if-eqz v1, :cond_19

    .line 996
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 998
    :cond_19
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1000
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_1a

    .line 1001
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v4, v15}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v3

    .line 1004
    :cond_1a
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_1b

    .line 1005
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v4, v15}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v3

    .line 1008
    :cond_1b
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 1010
    .end local v2    # "name":Ljava/lang/String;
    :cond_1c
    goto/16 :goto_6

    :cond_1d
    const/16 v4, 0x74

    if-ne v2, v4, :cond_22

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 1013
    .restart local v2    # "name":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1014
    if-eqz v1, :cond_1e

    .line 1015
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1017
    :cond_1e
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1019
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_1f

    .line 1020
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v4, v15, v5, v7}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v3

    .line 1023
    :cond_1f
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_20

    .line 1024
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v4, v15, v5, v6}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v3

    .line 1027
    :cond_20
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 1013
    .end local v2    # "name":Ljava/lang/String;
    :cond_21
    goto :goto_5

    .line 1029
    :cond_22
    const/16 v4, 0x66

    if-ne v2, v4, :cond_26

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v2

    .line 1032
    .restart local v2    # "name":Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1033
    if-eqz v1, :cond_23

    .line 1034
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1036
    :cond_23
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1038
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_24

    .line 1039
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v15, v5, v7}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v3

    .line 1042
    :cond_24
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_25

    .line 1043
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v15, v5, v6}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v3

    .line 1046
    :cond_25
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 1029
    .end local v2    # "name":Ljava/lang/String;
    :cond_26
    :goto_5
    nop

    .line 1050
    :cond_27
    :goto_6
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 896
    :cond_28
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v4

    .line 897
    .local v4, "strValue":Ljava/lang/String;
    if-eqz v1, :cond_29

    .line 898
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 901
    :cond_29
    if-eqz p1, :cond_2a

    .line 902
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 905
    :cond_2a
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_2b

    .line 906
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v3, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    invoke-direct {v3, v15, v4, v6}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v2

    .line 909
    :cond_2b
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_2c

    .line 910
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v3, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    invoke-direct {v3, v15, v4, v7}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v2

    .line 913
    :cond_2c
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v14, v3, :cond_2d

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_31

    .line 914
    :cond_2d
    :goto_8
    const-string v3, "%%"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v8, "%"

    if-eq v5, v2, :cond_2e

    .line 915
    invoke-virtual {v4, v3, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 918
    :cond_2e
    sget-object v3, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v3, :cond_2f

    const/4 v13, 0x1

    goto :goto_9

    :cond_2f
    const/4 v13, 0x0

    .line 920
    .local v13, "not":Z
    :goto_9
    const/16 v3, 0x25

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 921
    .local v5, "p0":I
    if-ne v5, v2, :cond_32

    .line 922
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v2, :cond_30

    .line 923
    sget-object v14, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_a

    .line 925
    :cond_30
    sget-object v14, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 966
    .end local v5    # "p0":I
    .end local v13    # "not":Z
    :cond_31
    :goto_a
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v3, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v3, v15, v4, v14}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v2

    .line 928
    .restart local v5    # "p0":I
    .restart local v13    # "not":Z
    :cond_32
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "items":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 931
    .local v8, "startsWithValue":Ljava/lang/String;
    const/4 v9, 0x0

    .line 932
    .local v9, "endsWithValue":Ljava/lang/String;
    const/4 v10, 0x0

    .line 933
    .local v10, "containsValues":[Ljava/lang/String;
    const/4 v11, 0x2

    if-nez v5, :cond_35

    .line 934
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v3, :cond_33

    .line 935
    array-length v3, v2

    sub-int/2addr v3, v7

    new-array v10, v3, [Ljava/lang/String;

    .line 936
    array-length v3, v10

    invoke-static {v2, v7, v10, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v8

    move-object v6, v9

    move-object v7, v10

    goto/16 :goto_b

    .line 938
    :cond_33
    array-length v3, v2

    sub-int/2addr v3, v7

    aget-object v9, v2, v3

    .line 939
    array-length v3, v2

    if-le v3, v11, :cond_34

    .line 940
    array-length v3, v2

    sub-int/2addr v3, v11

    new-array v10, v3, [Ljava/lang/String;

    .line 941
    array-length v3, v10

    invoke-static {v2, v7, v10, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v8

    move-object v6, v9

    move-object v7, v10

    goto :goto_b

    .line 939
    :cond_34
    move-object v3, v8

    move-object v6, v9

    move-object v7, v10

    goto :goto_b

    .line 944
    :cond_35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v3, :cond_36

    .line 945
    move-object v10, v2

    move-object v3, v8

    move-object v6, v9

    move-object v7, v10

    goto :goto_b

    .line 947
    :cond_36
    array-length v3, v2

    if-ne v3, v7, :cond_37

    .line 948
    aget-object v8, v2, v6

    move-object v3, v8

    move-object v6, v9

    move-object v7, v10

    goto :goto_b

    .line 949
    :cond_37
    array-length v3, v2

    if-ne v3, v11, :cond_38

    .line 950
    aget-object v8, v2, v6

    .line 951
    aget-object v9, v2, v7

    move-object v3, v8

    move-object v6, v9

    move-object v7, v10

    goto :goto_b

    .line 953
    :cond_38
    aget-object v8, v2, v6

    .line 954
    array-length v3, v2

    sub-int/2addr v3, v7

    aget-object v9, v2, v3

    .line 955
    array-length v3, v2

    sub-int/2addr v3, v11

    new-array v10, v3, [Ljava/lang/String;

    .line 956
    array-length v3, v10

    invoke-static {v2, v7, v10, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v8

    move-object v6, v9

    move-object v7, v10

    .line 960
    .end local v8    # "startsWithValue":Ljava/lang/String;
    .end local v9    # "endsWithValue":Ljava/lang/String;
    .end local v10    # "containsValues":[Ljava/lang/String;
    .local v3, "startsWithValue":Ljava/lang/String;
    .local v6, "endsWithValue":Ljava/lang/String;
    .local v7, "containsValues":[Ljava/lang/String;
    :goto_b
    new-instance v12, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v11, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object v8, v11

    move-object v9, v15

    move-object v10, v3

    move-object/from16 v16, v2

    move-object v2, v11

    .end local v2    # "items":[Ljava/lang/String;
    .local v16, "items":[Ljava/lang/String;
    move-object v11, v6

    move-object/from16 v17, v3

    move-object v3, v12

    .end local v3    # "startsWithValue":Ljava/lang/String;
    .local v17, "startsWithValue":Ljava/lang/String;
    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v3

    .line 791
    .end local v4    # "strValue":Ljava/lang/String;
    .end local v5    # "p0":I
    .end local v6    # "endsWithValue":Ljava/lang/String;
    .end local v7    # "containsValues":[Ljava/lang/String;
    .end local v13    # "not":Z
    .end local v16    # "items":[Ljava/lang/String;
    .end local v17    # "startsWithValue":Ljava/lang/String;
    :cond_39
    :goto_c
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v2, :cond_3a

    const/4 v2, 0x1

    goto :goto_d

    :cond_3a
    const/4 v2, 0x0

    .line 792
    .local v2, "not":Z
    :goto_d
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 794
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 796
    .local v4, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v5

    .line 797
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 801
    iget-char v9, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v10, 0x2c

    if-eq v9, v10, :cond_4e

    .line 802
    nop

    .line 810
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 811
    if-eqz v1, :cond_3b

    .line 812
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 815
    :cond_3b
    if-eqz p1, :cond_3c

    .line 816
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 820
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3c
    const/4 v3, 0x1

    .line 821
    .local v3, "isInt":Z
    const/4 v5, 0x1

    .line 822
    .local v5, "isIntObj":Z
    const/4 v8, 0x1

    .line 823
    .local v8, "isString":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3d
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_41

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 824
    .local v10, "item":Ljava/lang/Object;
    if-nez v10, :cond_3e

    .line 825
    if-eqz v3, :cond_3d

    .line 826
    const/4 v3, 0x0

    goto :goto_f

    .line 831
    :cond_3e
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 832
    .local v11, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_3f

    const-class v12, Ljava/lang/Byte;

    if-eq v11, v12, :cond_3f

    const-class v12, Ljava/lang/Short;

    if-eq v11, v12, :cond_3f

    const-class v12, Ljava/lang/Integer;

    if-eq v11, v12, :cond_3f

    const-class v12, Ljava/lang/Long;

    if-eq v11, v12, :cond_3f

    .line 834
    const/4 v3, 0x0

    .line 835
    const/4 v5, 0x0

    .line 838
    :cond_3f
    if-eqz v8, :cond_40

    const-class v12, Ljava/lang/String;

    if-eq v11, v12, :cond_40

    .line 839
    const/4 v8, 0x0

    .line 841
    .end local v10    # "item":Ljava/lang/Object;
    .end local v11    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_40
    goto :goto_f

    .line 843
    :cond_41
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_43

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_43

    .line 844
    if-eqz v2, :cond_42

    .line 845
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v7, v15}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 847
    :cond_42
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v7, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v7, v15}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v6

    .line 851
    :cond_43
    if-eqz v3, :cond_47

    .line 852
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_45

    .line 853
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 854
    .local v6, "value":J
    if-eqz v2, :cond_44

    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_10

    :cond_44
    sget-object v9, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 855
    .local v9, "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_10
    new-instance v10, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v11, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    invoke-direct {v11, v15, v6, v7, v9}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v10

    .line 858
    .end local v6    # "value":J
    .end local v9    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_45
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [J

    .line 859
    .local v6, "values":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_11
    array-length v9, v6

    if-ge v7, v9, :cond_46

    .line 860
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    aput-wide v9, v6, v7

    .line 859
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 863
    .end local v7    # "i":I
    :cond_46
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v9, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    invoke-direct {v9, v15, v6, v2}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;[JZ)V

    invoke-direct {v7, v9}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v7

    .line 866
    .end local v6    # "values":[J
    :cond_47
    if-eqz v8, :cond_4a

    .line 867
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_49

    .line 868
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 870
    .local v6, "value":Ljava/lang/String;
    if-eqz v2, :cond_48

    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_12

    :cond_48
    sget-object v7, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 871
    .local v7, "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_12
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v10, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v10, v15, v6, v7}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v9

    .line 874
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 875
    .local v6, "values":[Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 877
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v9, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    invoke-direct {v9, v15, v6, v2}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-direct {v7, v9}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v7

    .line 880
    .end local v6    # "values":[Ljava/lang/String;
    :cond_4a
    if-eqz v5, :cond_4d

    .line 881
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Long;

    .line 882
    .local v6, "values":[Ljava/lang/Long;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    array-length v9, v6

    if-ge v7, v9, :cond_4c

    .line 883
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    .line 884
    .local v9, "item":Ljava/lang/Number;
    if-eqz v9, :cond_4b

    .line 885
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    .line 882
    .end local v9    # "item":Ljava/lang/Number;
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 889
    .end local v7    # "i":I
    :cond_4c
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v9, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    invoke-direct {v9, v15, v6, v2}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    invoke-direct {v7, v9}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v7

    .line 892
    .end local v6    # "values":[Ljava/lang/Long;
    :cond_4d
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 804
    .end local v3    # "isInt":Z
    .end local v8    # "isString":Z
    .local v5, "value":Ljava/lang/Object;
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v5

    .line 807
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 765
    .end local v2    # "not":Z
    .end local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4f
    :goto_14
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v14, v2, :cond_50

    const/4 v6, 0x1

    :cond_50
    move-object v2, v14

    .end local v14    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    .local v2, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    move v14, v6

    .line 767
    .local v14, "not":Z
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v3

    .line 769
    .local v3, "startValue":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, "name":Ljava/lang/String;
    const-string v5, "and"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v5

    .line 777
    .local v5, "endValue":Ljava/lang/Object;
    if-eqz v3, :cond_52

    if-eqz v5, :cond_52

    .line 781
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 782
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    move-object v7, v5

    check-cast v7, Ljava/lang/Number;

    .line 783
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    move-object v8, v6

    move-object v9, v15

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;JJZ)V

    .line 784
    .local v6, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v7

    .line 787
    .end local v6    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    :cond_51
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 778
    :cond_52
    new-instance v6, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 772
    .end local v5    # "endValue":Ljava/lang/Object;
    :cond_53
    new-instance v5, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected readDoubleValue(J)D
    .locals 7
    .param p1, "longValue"    # J

    .line 1115
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1117
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1118
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1122
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1123
    .local v1, "endIndex":I
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1125
    .local v3, "value":D
    long-to-double v5, p1

    add-double/2addr v3, v5

    .line 1126
    return-wide v3
.end method

.method protected readLongValue()J
    .locals 5

    .line 1099
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1100
    .local v0, "beginIndex":I
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 1101
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1104
    :cond_1
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    .line 1105
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1108
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1109
    .local v1, "endIndex":I
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1111
    .local v3, "value":J
    return-wide v3
.end method

.method readName()Ljava/lang/String;
    .locals 4

    .line 1221
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1223
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1224
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illeal jsonpath syntax. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1228
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1229
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v1, :cond_3

    .line 1230
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1231
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1233
    goto :goto_2

    .line 1235
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1236
    goto :goto_1

    .line 1239
    :cond_3
    invoke-static {v2}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v2

    .line 1240
    .local v2, "identifierFlag":Z
    if-nez v2, :cond_4

    .line 1241
    goto :goto_2

    .line 1243
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1245
    .end local v2    # "identifierFlag":Z
    goto :goto_1

    .line 1247
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1248
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1251
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1253
    .local v1, "propertyName":Ljava/lang/String;
    return-object v1
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 7

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1161
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1162
    :cond_0
    const/16 v3, 0x21

    if-ne v1, v3, :cond_1

    .line 1163
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1164
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1165
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1166
    :cond_1
    const/16 v3, 0x3c

    if-ne v1, v3, :cond_3

    .line 1167
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1168
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v2, :cond_2

    .line 1169
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1170
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1172
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1174
    :cond_3
    const/16 v3, 0x3e

    if-ne v1, v3, :cond_5

    .line 1175
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1176
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v1, v2, :cond_4

    .line 1177
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1178
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1180
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1184
    :cond_5
    :goto_0
    if-nez v0, :cond_f

    .line 1185
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "name":Ljava/lang/String;
    const-string v2, "not"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "between"

    const-string v4, "in"

    const-string v5, "rlike"

    const-string v6, "like"

    if-eqz v2, :cond_a

    .line 1188
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1190
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1193
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1194
    :cond_6
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1195
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1196
    :cond_7
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1197
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1198
    :cond_8
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1199
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1201
    :cond_9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1204
    :cond_a
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1205
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1206
    :cond_b
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1207
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1208
    :cond_c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1209
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1210
    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1211
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1213
    :cond_e
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1217
    .end local v1    # "name":Ljava/lang/String;
    :cond_f
    :goto_1
    return-object v0
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 11

    .line 629
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 630
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v0, v0, -0x30

    .line 632
    .local v0, "index":I
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    return-object v1

    .line 633
    .end local v0    # "index":I
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    .line 634
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 637
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_12

    .line 638
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 640
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_4

    .line 641
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 642
    goto :goto_0

    .line 645
    :cond_4
    const/16 v3, 0x5b

    const-string v4, "not support jsonpath : "

    const/16 v5, 0x2e

    if-eq v0, v5, :cond_8

    const/16 v6, 0x2f

    if-ne v0, v6, :cond_5

    goto :goto_1

    .line 696
    :cond_5
    if-ne v0, v3, :cond_6

    .line 697
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v0

    return-object v0

    .line 700
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v0, :cond_7

    .line 701
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "propertyName":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 706
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_8
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 647
    .local v0, "c0":I
    const/4 v6, 0x0

    .line 648
    .local v6, "deep":Z
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 649
    const/16 v7, 0x2a

    if-ne v0, v5, :cond_9

    iget-char v8, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v8, v5, :cond_9

    .line 650
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 651
    const/4 v6, 0x1

    .line 652
    iget-object v8, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v10, v9, 0x3

    if-le v8, v10, :cond_9

    iget-char v8, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v8, v3, :cond_9

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 654
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_9

    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/2addr v8, v2

    .line 655
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, 0x2

    .line 656
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_9

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 659
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 660
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 663
    :cond_9
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v7, :cond_b

    .line 664
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-nez v1, :cond_a

    .line 665
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 668
    :cond_a
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    return-object v1

    .line 671
    :cond_b
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 672
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v1

    return-object v1

    .line 675
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "propertyName":Ljava/lang/String;
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x28

    if-ne v2, v3, :cond_11

    .line 677
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 678
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x29

    if-ne v2, v3, :cond_10

    .line 679
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_d

    .line 680
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 683
    :cond_d
    const-string v2, "size"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "length"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2

    .line 687
    :cond_e
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_f
    :goto_2
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    return-object v2

    .line 690
    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 693
    :cond_11
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v2, v1, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 709
    .end local v0    # "c0":I
    .end local v1    # "propertyName":Ljava/lang/String;
    .end local v6    # "deep":Z
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method readString()Ljava/lang/String;
    .locals 4

    .line 1257
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1258
    .local v0, "quoate":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1260
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1261
    .local v1, "beginIndex":I
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1265
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1267
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1269
    return-object v2
.end method

.method protected readValue()Ljava/lang/Object;
    .locals 3

    .line 1130
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1132
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1136
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1140
    :cond_1
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    .line 1141
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, "name":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    const/4 v1, 0x0

    return-object v1

    .line 1146
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1150
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1137
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final skipWhitespace()V
    .locals 2

    .line 714
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 716
    goto :goto_0

    .line 721
    :cond_1
    return-void
.end method
