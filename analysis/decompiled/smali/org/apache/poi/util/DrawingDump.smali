.class public Lorg/apache/poi/util/DrawingDump;
.super Ljava/lang/Object;
.source "DrawingDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v4, Ljava/io/FileInputStream;

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 39
    .local v3, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :try_start_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Drawing group:"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->dumpDrawingGroupRecords(Z)V

    .line 42
    const/4 v2, 0x1

    .local v2, "sheetNum":I
    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 44
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sheet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    .line 46
    .local v1, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->dumpDrawingRecords(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 51
    return-void

    .line 49
    .end local v2    # "sheetNum":I
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    throw v4
.end method
