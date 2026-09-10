.class public final Lorg/apache/poi/hssf/record/CodepageRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "CodepageRecord.java"


# static fields
.field public static final CODEPAGE:S = 0x4b0s

.field public static final sid:S = 0x42s


# instance fields
.field private field_1_codepage:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 52
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CodepageRecord;->field_1_codepage:S

    .line 54
    return-void
.end method


# virtual methods
.method public getCodepage()S
    .locals 1

    .line 77
    iget-short v0, p0, Lorg/apache/poi/hssf/record/CodepageRecord;->field_1_codepage:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 96
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 101
    const/16 v0, 0x42

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 92
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CodepageRecord;->getCodepage()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 93
    return-void
.end method

.method public setCodepage(S)V
    .locals 0
    .param p1, "cp"    # S

    .line 65
    iput-short p1, p0, Lorg/apache/poi/hssf/record/CodepageRecord;->field_1_codepage:S

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CODEPAGE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, "    .codepage        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CodepageRecord;->getCodepage()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, "[/CODEPAGE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
