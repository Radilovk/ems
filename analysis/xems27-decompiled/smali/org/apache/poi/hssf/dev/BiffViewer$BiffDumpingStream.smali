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
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;

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
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_recordCounter:I

    .line 504
    iput v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    .line 505
    iput v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    .line 506
    iput v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

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

    .line 551
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_innerHasReachedEOF:Z

    if-eqz v0, :cond_0

    .line 552
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 555
    .local v0, "b0":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 556
    iput-boolean v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_innerHasReachedEOF:Z

    .line 557
    return-void

    .line 559
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    int-to-byte v3, v0

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 560
    iget-object v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    const/4 v5, 0x3

    invoke-virtual {v3, v1, v2, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 561
    iget-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    .line 562
    .local v1, "len":I
    iget-object v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    iget-object v5, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 563
    iput v4, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    .line 564
    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    .line 565
    iget v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_recordCounter:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_recordCounter:I

    .line 566
    return-void
.end method

.method private formatBufferIfAtEndOfRec()V
    .locals 9

    .line 568
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-eq v0, v1, :cond_0

    .line 569
    return-void

    .line 571
    :cond_0
    add-int/lit8 v1, v1, -0x4

    .line 572
    .local v1, "dataSize":I
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    .line 573
    .local v0, "sid":I
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    iget v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    sub-int v8, v2, v3

    .line 574
    .local v8, "globalOffset":I
    iget-object v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_listener:Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;

    iget v4, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_recordCounter:I

    iget-object v7, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    move v3, v8

    move v5, v0

    move v6, v1

    invoke-interface/range {v2 .. v7}, Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;->processRecord(IIII[B)V

    .line 575
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    .line 578
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 579
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-lt v0, v1, :cond_0

    .line 512
    invoke-direct {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->fillNextBuffer()V

    .line 514
    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-lt v0, v1, :cond_1

    .line 515
    const/4 v0, -0x1

    return v0

    .line 517
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 518
    .local v1, "result":I
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    .line 519
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    .line 520
    invoke-direct {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->formatBufferIfAtEndOfRec()V

    .line 521
    return v1
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

    .line 525
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-lt v0, v1, :cond_0

    .line 526
    invoke-direct {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->fillNextBuffer()V

    .line 528
    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    iget v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentSize:I

    if-lt v0, v1, :cond_1

    .line 529
    const/4 v0, -0x1

    return v0

    .line 531
    :cond_1
    sub-int/2addr v1, v0

    .line 533
    .local v1, "availSize":I
    if-le p3, v1, :cond_2

    .line 534
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Unexpected request to read past end of current biff record"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 535
    move v0, v1

    .local v0, "result":I
    goto :goto_0

    .line 537
    .end local v0    # "result":I
    :cond_2
    move v0, p3

    .line 539
    .restart local v0    # "result":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_data:[B

    iget v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_currentPos:I

    .line 541
    iget v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->_overallStreamPos:I

    .line 542
    invoke-direct {p0}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffDumpingStream;->formatBufferIfAtEndOfRec()V

    .line 543
    return v0
.end method
