.class public Lorg/apache/poi/util/DrawingDump;
.super Ljava/lang/Object;
.source "DrawingDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

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

    .line 35
    new-instance v0, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    new-instance v1, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v0, "fs":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    .line 39
    .local v1, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Drawing group:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->dumpDrawingGroupRecords(Z)V

    .line 42
    const/4 v3, 0x1

    .local v3, "sheetNum":I
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 44
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sheet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v4

    .line 46
    .local v4, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->dumpDrawingRecords(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v4    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "sheetNum":I
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    .line 50
    nop

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    throw v2
.end method
