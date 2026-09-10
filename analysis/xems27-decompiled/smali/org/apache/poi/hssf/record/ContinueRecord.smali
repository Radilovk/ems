.class public final Lorg/apache/poi/hssf/record/ContinueRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ContinueRecord.java"


# static fields
.field public static final sid:S = 0x3cs


# instance fields
.field private _data:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 68
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    .line 70
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    .line 37
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 73
    new-instance v0, Lorg/apache/poi/hssf/record/ContinueRecord;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/ContinueRecord;-><init>([B)V

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    array-length v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 65
    const/16 v0, 0x3c

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 44
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CONTINUE RECORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "    .data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/ContinueRecord;->_data:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "[/CONTINUE RECORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
