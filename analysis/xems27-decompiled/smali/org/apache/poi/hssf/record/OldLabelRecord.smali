.class public final Lorg/apache/poi/hssf/record/OldLabelRecord;
.super Lorg/apache/poi/hssf/record/OldCellRecord;
.source "OldLabelRecord.java"


# static fields
.field public static final biff2_sid:S = 0x4s

.field public static final biff345_sid:S = 0x204s

.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private field_4_string_len:S

.field private field_5_bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/apache/poi/hssf/record/OldLabelRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/OldLabelRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/OldCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V

    .line 46
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->isBiff2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    .line 53
    :goto_1
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    new-array v2, v0, [B

    iput-object v2, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_5_bytes:[B

    .line 54
    invoke-virtual {p1, v2, v1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 57
    sget-object v0, Lorg/apache/poi/hssf/record/OldLabelRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LabelRecord data remains: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 62
    :cond_2
    return-void
.end method


# virtual methods
.method protected appendValueText(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "    .string_len= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "    .value       = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    return-void
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "OLD LABEL"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 2

    .line 92
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v1, "Old Label Records are supported READ ONLY"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringLength()S
    .locals 1

    .line 74
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_4_string_len:S

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->field_5_bytes:[B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(I[B)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 89
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v1, "Old Label Records are supported READ ONLY"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0
    .param p1, "codepage"    # Lorg/apache/poi/hssf/record/CodepageRecord;

    .line 65
    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldLabelRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    .line 66
    return-void
.end method
