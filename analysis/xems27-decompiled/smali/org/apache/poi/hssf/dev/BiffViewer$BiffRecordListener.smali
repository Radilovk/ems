.class final Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
.super Ljava/lang/Object;
.source "BiffViewer.java"

# interfaces
.implements Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/dev/BiffViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BiffRecordListener"
.end annotation


# instance fields
.field private _headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _hexDumpWriter:Ljava/io/Writer;

.field private final _noHeader:Z

.field private final _zeroAlignEachRecord:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;ZZ)V
    .locals 1
    .param p1, "hexDumpWriter"    # Ljava/io/Writer;
    .param p2, "zeroAlignEachRecord"    # Z
    .param p3, "noHeader"    # Z

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_hexDumpWriter:Ljava/io/Writer;

    .line 443
    iput-boolean p2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_zeroAlignEachRecord:Z

    .line 444
    iput-boolean p3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_noHeader:Z

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_headers:Ljava/util/List;

    .line 446
    return-void
.end method

.method private static formatRecordDetails(IIII)Ljava/lang/String;
    .locals 4
    .param p0, "globalOffset"    # I
    .param p1, "sid"    # I
    .param p2, "size"    # I
    .param p3, "recordCounter"    # I

    .line 470
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 471
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v3, " recno="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 473
    const-string v3, " sid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 474
    const-string v3, " size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getRecentHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_headers:Ljava/util/List;

    .line 466
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_headers:Ljava/util/List;

    .line 467
    return-object v0
.end method

.method public processRecord(IIII[B)V
    .locals 4
    .param p1, "globalOffset"    # I
    .param p2, "recordCounter"    # I
    .param p3, "sid"    # I
    .param p4, "dataSize"    # I
    .param p5, "data"    # [B

    .line 450
    invoke-static {p1, p3, p4, p2}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->formatRecordDetails(IIII)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "header":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_noHeader:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_hexDumpWriter:Ljava/io/Writer;

    .line 453
    .local v1, "w":Ljava/io/Writer;
    if-eqz v1, :cond_1

    .line 455
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 456
    sget-object v2, Lorg/apache/poi/hssf/dev/BiffViewer;->NEW_LINE_CHARS:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    .line 457
    add-int/lit8 v2, p4, 0x4

    iget-boolean v3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_zeroAlignEachRecord:Z

    invoke-static {v1, p5, v2, p1, v3}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpAligned(Ljava/io/Writer;[BIIZ)V

    .line 458
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_0

    .line 459
    :catch_0
    move-exception v2

    .line 460
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 463
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method
