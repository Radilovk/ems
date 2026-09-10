.class public Lorg/apache/poi/hssf/dev/EFBiffViewer;
.super Ljava/lang/Object;
.source "EFBiffViewer.java"


# instance fields
.field file:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 67
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "--help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :try_start_0
    new-instance v1, Lorg/apache/poi/hssf/dev/EFBiffViewer;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/EFBiffViewer;-><init>()V

    .line 73
    .local v1, "viewer":Lorg/apache/poi/hssf/dev/EFBiffViewer;
    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/dev/EFBiffViewer;->setFile(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/EFBiffViewer;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "viewer":Lorg/apache/poi/hssf/dev/EFBiffViewer;
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 83
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "EFBiffViewer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Outputs biffview of records based on HSSFEventFactory"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: java org.apache.poi.hssf.dev.EBBiffViewer filename"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/hssf/dev/EFBiffViewer;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 46
    .local v0, "din":Ljava/io/InputStream;
    new-instance v1, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;

    invoke-direct {v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;-><init>()V

    .line 48
    .local v1, "req":Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    new-instance v2, Lorg/apache/poi/hssf/dev/EFBiffViewer$1;

    invoke-direct {v2, p0}, Lorg/apache/poi/hssf/dev/EFBiffViewer$1;-><init>(Lorg/apache/poi/hssf/dev/EFBiffViewer;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->addListenerForAllRecords(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    .line 55
    new-instance v2, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;

    invoke-direct {v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;-><init>()V

    .line 57
    .local v2, "factory":Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;
    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V

    .line 58
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/apache/poi/hssf/dev/EFBiffViewer;->file:Ljava/lang/String;

    .line 63
    return-void
.end method
