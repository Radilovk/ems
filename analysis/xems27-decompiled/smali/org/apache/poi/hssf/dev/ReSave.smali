.class public Lorg/apache/poi/hssf/dev/ReSave;
.super Ljava/lang/Object;
.source "ReSave.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    const-string v0, "done"

    const/4 v1, 0x0

    .line 36
    .local v1, "initDrawing":Z
    move-object v2, p0

    .local v2, "arr$":[Ljava/lang/String;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 37
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "-dg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    .line 39
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 40
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 41
    .local v6, "is":Ljava/io/FileInputStream;
    new-instance v7, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v7, v6}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    .line 43
    .local v7, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :try_start_0
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 46
    invoke-virtual {v7, v9}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v10

    .line 47
    .local v10, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    .line 45
    .end local v10    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 52
    .end local v9    # "i":I
    :cond_2
    const-string v9, ".xls"

    const-string v10, "-saved.xls"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 53
    .local v9, "outputFile":Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saving to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 54
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7, v8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->write(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 59
    nop

    .line 60
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "outputFile":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 63
    nop

    .line 36
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v7    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 58
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "outputFile":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .end local v1    # "initDrawing":Z
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v7    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .end local p0    # "args":[Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .end local v9    # "outputFile":Ljava/lang/String;
    .restart local v1    # "initDrawing":Z
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "len$":I
    .restart local v4    # "i$":I
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    throw v0

    .line 66
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .end local v7    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :cond_3
    return-void
.end method
