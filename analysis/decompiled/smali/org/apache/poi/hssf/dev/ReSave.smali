.class public Lorg/apache/poi/hssf/dev/ReSave;
.super Ljava/lang/Object;
.source "ReSave.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v4, 0x0

    .line 36
    .local v4, "initDrawing":Z
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v0, v1, v3

    .line 37
    .local v0, "arg":Ljava/lang/String;
    const-string v11, "-dg"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v4, 0x1

    .line 36
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 40
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 41
    .local v5, "is":Ljava/io/FileInputStream;
    new-instance v10, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v10, v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    .line 43
    .local v10, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :try_start_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "done"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 46
    invoke-virtual {v10, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v9

    .line 47
    .local v9, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    if-eqz v4, :cond_1

    .line 48
    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 45
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 52
    .end local v9    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_2
    const-string v11, ".xls"

    const-string v12, "-saved.xls"

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "outputFile":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "saving to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 54
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    .local v7, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v10, v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 60
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "done"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .end local v2    # "i":I
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "outputFile":Ljava/lang/String;
    :catchall_1
    move-exception v11

    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    throw v11

    .line 66
    .end local v0    # "arg":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v10    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :cond_3
    return-void
.end method
