.class public Lorg/apache/poi/hssf/dev/EFBiffViewer;
.super Ljava/lang/Object;
.source "EFBiffViewer.java"


# instance fields
.field file:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 67
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v4

    const-string v3, "--help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    :try_start_0
    new-instance v1, Lorg/apache/poi/hssf/dev/EFBiffViewer;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/EFBiffViewer;-><init>()V

    .line 73
    .local v1, "viewer":Lorg/apache/poi/hssf/dev/EFBiffViewer;
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/dev/EFBiffViewer;->setFile(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/EFBiffViewer;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "viewer":Lorg/apache/poi/hssf/dev/EFBiffViewer;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "EFBiffViewer"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Outputs biffview of records based on HSSFEventFactory"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "usage: java org.apache.poi.hssf.dev.EBBiffViewer filename"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/poi/hssf/dev/EFBiffViewer;->file:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 46
    .local v0, "din":Ljava/io/InputStream;
    new-instance v2, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;

    invoke-direct {v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;-><init>()V

    .line 48
    .local v2, "req":Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    new-instance v3, Lorg/apache/poi/hssf/dev/EFBiffViewer$1;

    invoke-direct {v3, p0}, Lorg/apache/poi/hssf/dev/EFBiffViewer$1;-><init>(Lorg/apache/poi/hssf/dev/EFBiffViewer;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->addListenerForAllRecords(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    .line 55
    new-instance v1, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;

    invoke-direct {v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;-><init>()V

    .line 57
    .local v1, "factory":Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;
    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Ljava/io/InputStream;)V

    .line 58
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/poi/hssf/dev/EFBiffViewer;->file:Ljava/lang/String;

    .line 63
    return-void
.end method
