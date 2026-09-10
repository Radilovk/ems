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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 53
    aget-object v1, p1, v0

    .line 54
    .local v1, "param":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    return v0

    .line 52
    .end local v1    # "param":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getHSSFPatriarchBoundAggregate(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/record/EscherAggregate;
    .locals 3
    .param p0, "patriarch"    # Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "boundAggregateField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "_boundAggregate"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/EscherAggregate;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 180
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    nop

    .line 181
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getIndexesByIdArray([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "-sheet-indexes"

    invoke-static {v1, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    .line 86
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 89
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p0, v2

    .line 90
    .local v2, "sheetParam":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "sheets":[Ljava/lang/String;
    move-object v4, v3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 92
    .local v7, "sheet":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v7    # "sheet":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "sheetParam":Ljava/lang/String;
    .end local v3    # "sheets":[Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sheet list value was not specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    return-object v0
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
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "-sheet-name"

    invoke-static {v1, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    .line 69
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 72
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    .line 73
    .local v3, "sheetName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, "sheetPos":I
    if-eq v2, v4, :cond_0

    .line 77
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "specified sheet name has not been found in xls file"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v3    # "sheetName":Ljava/lang/String;
    .end local v4    # "sheetPos":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sheet name param value was not specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getInputFileName([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # [Ljava/lang/String;

    .line 112
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    return-object v0
.end method

.method private static getInternalWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 3
    .param p0, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "internalSheetField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "workbook"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/model/InternalWorkbook;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 194
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    nop

    .line 195
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getOutputFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 116
    const-string v0, "xls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".xml"

    if-eqz v0, :cond_0

    .line 117
    const-string v0, ".xls"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getIndexesByIdArray([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getIndexesByName([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v1

    .line 104
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static isExcludeWorkbookRecords([Ljava/lang/String;)Z
    .locals 2
    .param p0, "params"    # [Ljava/lang/String;

    .line 62
    const-string v0, "-exclude-workbook"

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    array-length v0, p0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: BiffDrawingToXml [options] inputWorkbook"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -exclude-workbook            exclude workbook-level records"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -sheet-indexes   <indexes>   output sheets with specified indexes"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -sheet-namek  <names>        output sheets with specified name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getInputFileName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "input":Ljava/lang/String;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "inp":Ljava/io/FileInputStream;
    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getOutputFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->isExcludeWorkbookRecords([Ljava/lang/String;)Z

    move-result v4

    invoke-static {v3, v1, v4, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->writeToFile(Ljava/io/OutputStream;Ljava/io/InputStream;Z[Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 137
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 138
    return-void
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

    .line 141
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 142
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 143
    .local v2, "workbook":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    invoke-static {v2}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getInternalWorkbook(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    .line 144
    .local v3, "internalWorkbook":Lorg/apache/poi/hssf/model/InternalWorkbook;
    const/16 v4, 0xeb

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 145
    .local v4, "r":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->decode()V

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v5, "builder":Ljava/lang/StringBuilder;
    const-string v6, "<workbook>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v6, "\t"

    .line 150
    .local v6, "tab":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 151
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v7

    .line 152
    .local v7, "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/ddf/EscherRecord;

    .line 153
    .local v9, "record":Lorg/apache/poi/ddf/EscherRecord;
    invoke-virtual {v9, v6}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v9    # "record":Lorg/apache/poi/ddf/EscherRecord;
    goto :goto_0

    .line 156
    .end local v7    # "escherRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v7, p3

    invoke-static {v7, v2}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getSheetsIndexes([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;

    move-result-object v8

    .line 157
    .local v8, "sheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 158
    .local v10, "i":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v11

    .line 159
    .local v11, "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    if-eqz v11, :cond_1

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "<sheet"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ">\n"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {v11}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getHSSFPatriarchBoundAggregate(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;)Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/poi/hssf/record/EscherAggregate;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "</sheet"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .end local v10    # "i":Ljava/lang/Integer;
    .end local v11    # "p":Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    :cond_1
    goto :goto_1

    .line 165
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v9, "</workbook>\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move-object/from16 v10, p0

    invoke-virtual {v10, v9}, Ljava/io/OutputStream;->write([B)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->close()V

    .line 168
    return-void
.end method
