.class public Lorg/apache/poi/hssf/dev/BiffDrawingToXml;
.super Ljava/lang/Object;
.source "BiffDrawingToXml.java"


# static fields
.field private static final EXCLUDE_WORKBOOK_RECORDS:Ljava/lang/String; = "-exclude-workbook"

.field private static final SHEET_INDEXES_PARAM:Ljava/lang/String; = "-sheet-indexes"

.field private static final SHEET_NAME_PARAM:Ljava/lang/String; = "-sheet-name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 53
    aget-object v1, p1, v0

    .line 54
    .local v1, "param":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    .end local v0    # "i":I
    .end local v1    # "param":Ljava/lang/String;
    :goto_1
    return v0

    .line 52
    .restart local v0    # "i":I
    .restart local v1    # "param":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "param":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getHSSFPatriarchBoundAggregate(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/record/EscherAggregate;
    .locals 4
    .param p0, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "boundAggregateField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "_boundAggregate"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/EscherAggregate;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 181
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 178
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getIndexesByIdArray([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v8, "-sheet-indexes"

    invoke-static {v8, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 85
    .local v4, "pos":I
    const/4 v8, -0x1

    if-eq v8, v4, :cond_1

    .line 86
    array-length v8, p0

    if-lt v4, v8, :cond_0

    .line 87
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "sheet list value was not specified"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 89
    :cond_0
    add-int/lit8 v8, v4, 0x1

    aget-object v6, p0, v8

    .line 90
    .local v6, "sheetParam":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "sheets":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 92
    .local v5, "sheet":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sheet":Ljava/lang/String;
    .end local v6    # "sheetParam":Ljava/lang/String;
    .end local v7    # "sheets":[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private static getIndexesByName([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;
    .locals 6
    .param p0, "params"    # [Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v4, "-sheet-name"

    invoke-static {v4, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "pos":I
    if-eq v5, v1, :cond_2

    .line 69
    array-length v4, p0

    if-lt v1, v4, :cond_0

    .line 70
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "sheet name param value was not specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_0
    add-int/lit8 v4, v1, 0x1

    aget-object v2, p0, v4

    .line 73
    .local v2, "sheetName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, "sheetPos":I
    if-ne v5, v3, :cond_1

    .line 75
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "specified sheet name has not been found in xls file"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v2    # "sheetName":Ljava/lang/String;
    .end local v3    # "sheetPos":I
    :cond_2
    return-object v0
.end method

.method private static getInputFileName([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    .line 112
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    return-object v0
.end method

.method private static getInternalWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 4
    .param p0, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, "internalSheetField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "workbook"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 188
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 189
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/model/InternalWorkbook;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :goto_0
    return-object v2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 195
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getOutputFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string/jumbo v0, "xls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, ".xls"

    const-string v1, ".xml"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSheetsIndexes([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;
    .locals 4
    .param p0, "params"    # [Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getIndexesByIdArray([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getIndexesByName([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 103
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v2

    .line 104
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-object v1
.end method

.method private static isExcludeWorkbookRecords([Ljava/lang/String;)Z
    .locals 2
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, -0x1

    const-string v1, "-exclude-workbook"

    invoke-static {v1, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    array-length v4, p0

    if-nez v4, :cond_0

    .line 124
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Usage: BiffDrawingToXml [options] inputWorkbook"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Options:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  -exclude-workbook            exclude workbook-level records"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  -sheet-indexes   <indexes>   output sheets with specified indexes"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  -sheet-namek  <names>        output sheets with specified name"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getInputFileName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "input":Ljava/lang/String;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "inp":Ljava/io/FileInputStream;
    invoke-static {v1}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getOutputFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->isExcludeWorkbookRecords([Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v0, v4, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->writeToFile(Ljava/io/OutputStream;Ljava/io/InputStream;Z[Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 137
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0
.end method

.method public static writeToFile(Ljava/io/OutputStream;Ljava/io/InputStream;Z[Ljava/lang/String;)V
    .locals 16
    .param p0, "fos"    # Ljava/io/OutputStream;
    .param p1, "xlsWorkbook"    # Ljava/io/InputStream;
    .param p2, "excludeWorkbookRecords"    # Z
    .param p3, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v3, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 142
    .local v3, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    new-instance v12, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v12, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 143
    .local v12, "workbook":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    invoke-static {v12}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getInternalWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v6

    .line 144
    .local v6, "internalWorkbook":Lorg/apache/poi/hssf/model/InternalWorkbook;
    const/16 v13, 0xeb

    invoke-virtual {v6, v13}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 145
    .local v8, "r":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->decode()V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v13, "<workbook>\n"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v11, "\t"

    .line 150
    .local v11, "tab":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 151
    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ddf/EscherRecord;

    .line 153
    .local v9, "record":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v9, v11}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    .end local v2    # "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "record":Lorg/apache/poi/ddf/EscherRecord;
    :cond_0
    move-object/from16 v0, p3

    invoke-static {v0, v12}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getSheetsIndexes([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;

    move-result-object v10

    .line 157
    .local v10, "sheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 158
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v7

    .line 159
    .local v7, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    if-eqz v7, :cond_1

    .line 160
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "<sheet"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {v7}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getHSSFPatriarchBoundAggregate(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/poi/hssf/record/EscherAggregate;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "</sheet"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    .end local v4    # "i":Ljava/lang/Integer;
    .end local v7    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_2
    const-string v13, "</workbook>\n"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->close()V

    .line 168
    return-void
.end method
