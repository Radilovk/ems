.class public abstract Lorg/apache/poi/hssf/record/HeaderFooterBase;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "HeaderFooterBase.java"


# instance fields
.field private field_2_hasMultibyte:Z

.field private field_3_text:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->setText(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 39
    .local v0, "field_1_footer_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    .line 41
    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    .line 46
    .end local v0    # "field_1_footer_len":I
    :goto_1
    goto :goto_2

    .line 49
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    .line 51
    :goto_2
    return-void
.end method

.method private getTextLength()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final getDataSize()I
    .locals 3

    .line 98
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getTextLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 99
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getTextLength()I

    move-result v0

    iget-boolean v2, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    return-object v0
.end method

.method public final serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 86
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getTextLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getTextLength()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 88
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 89
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 95
    :cond_1
    :goto_0
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 59
    if-eqz p1, :cond_1

    .line 62
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_2_hasMultibyte:Z

    .line 63
    iput-object p1, p0, Lorg/apache/poi/hssf/record/HeaderFooterBase;->field_3_text:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HeaderFooterBase;->getDataSize()I

    move-result v0

    const/16 v1, 0x2020

    if-gt v0, v1, :cond_0

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header/Footer string too long (limit is 8224 bytes)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
