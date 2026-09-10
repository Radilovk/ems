.class public final Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;
.super Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;
.source "DrawingRecordForBiffViewer.java"


# static fields
.field public static final sid:S = 0xecs


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/DrawingRecord;)V
    .locals 1
    .param p1, "r"    # Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 40
    invoke-static {p1}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;->convertToInputStream(Lorg/apache/poi/hssf/record/DrawingRecord;)Lorg/apache/poi/hssf/record/RecordInputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 41
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingRecordForBiffViewer;->convertRawBytesToEscherRecords()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 36
    return-void
.end method

.method private static convertToInputStream(Lorg/apache/poi/hssf/record/DrawingRecord;)Lorg/apache/poi/hssf/record/RecordInputStream;
    .locals 3
    .param p0, "r"    # Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 45
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingRecord;->serialize()[B

    move-result-object v0

    .line 46
    .local v0, "data":[B
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v1, "rinp":Lorg/apache/poi/hssf/record/RecordInputStream;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 50
    return-object v1
.end method


# virtual methods
.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "MSODRAWING"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 60
    const/16 v0, 0xec

    return v0
.end method
