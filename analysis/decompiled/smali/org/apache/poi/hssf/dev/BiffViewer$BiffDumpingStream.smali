.class final Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;
.super Ljava/io/InputStream;
.source "BiffViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/dev/BiffViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BiffDumpingStream"
.end annotation


# instance fields
.field private _currentPos:I

.field private _currentSize:I

.field private final _data:[B

.field private _innerHasReachedEOF:Z

.field private final _is:Ljava/io/DataInputStream;

.field private final _listener:Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;

.field private _overallStreamPos:I

.field private _recordCounter:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;

    .prologue
    const/4 v1, 0x0

    .line 499
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 500
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    .line 501
    iput-object p2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_listener:Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;

    .line 502
    const/16 v0, 0x2024

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    .line 503
    iput v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_recordCounter:I

    .line 504
    iput v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    .line 505
    iput v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    .line 506
    iput v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    .line 507
    return-void
.end method

.method private fillNextBuffer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 551
    iget-boolean v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_innerHasReachedEOF:Z

    if-eqz v2, :cond_0

    .line 566
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 555
    .local v0, "b0":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 556
    iput-boolean v6, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_innerHasReachedEOF:Z

    goto :goto_0

    .line 559
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v5

    .line 560
    iget-object v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    iget-object v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 561
    iget-object v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    .line 562
    .local v1, "len":I
    iget-object v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    iget-object v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 563
    iput v5, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    .line 564
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    .line 565
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_recordCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_recordCounter:I

    goto :goto_0
.end method

.method private formatBufferIfAtEndOfRec()V
    .locals 6

    .prologue
    .line 568
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-eq v0, v2, :cond_0

    .line 575
    :goto_0
    return-void

    .line 571
    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    add-int/lit8 v4, v0, -0x4

    .line 572
    .local v4, "dataSize":I
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    .line 573
    .local v3, "sid":I
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    sub-int v1, v0, v2

    .line 574
    .local v1, "globalOffset":I
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_listener:Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;

    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_recordCounter:I

    iget-object v5, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    invoke-interface/range {v0 .. v5}, Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;->processRecord(IIII[B)V

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 579
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-lt v1, v2, :cond_0

    .line 512
    invoke-direct {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->fillNextBuffer()V

    .line 514
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-lt v1, v2, :cond_1

    .line 515
    const/4 v0, -0x1

    .line 521
    :goto_0
    return v0

    .line 517
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 518
    .local v0, "result":I
    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    .line 519
    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    .line 520
    invoke-direct {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->formatBufferIfAtEndOfRec()V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-lt v2, v3, :cond_0

    .line 526
    invoke-direct {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->fillNextBuffer()V

    .line 528
    :cond_0
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-lt v2, v3, :cond_1

    .line 529
    const/4 v1, -0x1

    .line 543
    :goto_0
    return v1

    .line 531
    :cond_1
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    iget v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    sub-int v0, v2, v3

    .line 533
    .local v0, "availSize":I
    if-le p3, v0, :cond_2

    .line 534
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Unexpected request to read past end of current biff record"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    move v1, v0

    .line 539
    .local v1, "result":I
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    iget v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    .line 541
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    .line 542
    invoke-direct {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->formatBufferIfAtEndOfRec()V

    goto :goto_0

    .line 537
    .end local v1    # "result":I
    :cond_2
    move v1, p3

    .restart local v1    # "result":I
    goto :goto_1
.end method
