.class public final Lorg/apache/poi/hssf/record/MMSRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "MMSRecord.java"


# static fields
.field public static final sid:S = 0xc1s


# instance fields
.field private field_1_addMenuCount:B

.field private field_2_delMenuCount:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    .line 52
    return-void
.end method


# virtual methods
.method public getAddMenuCount()B
    .locals 1

    .line 81
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 113
    const/4 v0, 0x2

    return v0
.end method

.method public getDelMenuCount()B
    .locals 1

    .line 91
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 118
    const/16 v0, 0xc1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 108
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getAddMenuCount()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getDelMenuCount()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 110
    return-void
.end method

.method public setAddMenuCount(B)V
    .locals 0
    .param p1, "am"    # B

    .line 61
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_1_addMenuCount:B

    .line 62
    return-void
.end method

.method public setDelMenuCount(B)V
    .locals 0
    .param p1, "dm"    # B

    .line 71
    iput-byte p1, p0, Lorg/apache/poi/hssf/record/MMSRecord;->field_2_delMenuCount:B

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[MMS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, "    .addMenu        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getAddMenuCount()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v2, "    .delMenu        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/MMSRecord;->getDelMenuCount()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "[/MMS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
