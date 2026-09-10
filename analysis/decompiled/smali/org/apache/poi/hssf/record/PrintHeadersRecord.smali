.class public final Lorg/apache/poi/hssf/record/PrintHeadersRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PrintHeadersRecord.java"


# static fields
.field public static final sid:S = 0x2as


# instance fields
.field private field_1_print_headers:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->field_1_print_headers:S

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;-><init>()V

    .line 102
    .local v0, "rec":Lorg/apache/poi/hssf/record/PrintHeadersRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->field_1_print_headers:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->field_1_print_headers:S

    .line 103
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x2

    return v0
.end method

.method public getPrintHeaders()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->field_1_print_headers:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x2a

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 88
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->field_1_print_headers:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 89
    return-void
.end method

.method public setPrintHeaders(Z)V
    .locals 1
    .param p1, "p"    # Z

    .prologue
    const/4 v0, 0x1

    .line 56
    if-ne p1, v0, :cond_0

    .line 58
    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->field_1_print_headers:S

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->field_1_print_headers:S

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PRINTHEADERS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, "    .printheaders   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->getPrintHeaders()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "[/PRINTHEADERS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
