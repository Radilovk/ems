.class public final Lorg/apache/poi/hssf/record/StringRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "StringRecord.java"


# static fields
.field public static final sid:S = 0x207s


# instance fields
.field private _is16bitUnicode:Z

.field private _text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 48
    .local v0, "field_1_string_length":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_is16bitUnicode:Z

    .line 50
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    .line 55
    :goto_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 98
    new-instance v0, Lorg/apache/poi/hssf/record/StringRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/StringRecord;-><init>()V

    .line 99
    .local v0, "rec":Lorg/apache/poi/hssf/record/StringRecord;
    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_is16bitUnicode:Z

    iput-boolean v1, v0, Lorg/apache/poi/hssf/record/StringRecord;->_is16bitUnicode:Z

    .line 100
    iget-object v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    .line 101
    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 66
    const/16 v0, 0x207

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    return-object v0
.end method

.method protected serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 59
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 60
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeStringData(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/StringRecord;->_is16bitUnicode:Z

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[STRING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, "    .string            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/StringRecord;->_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "[/STRING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
