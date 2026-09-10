.class public final Lorg/apache/poi/hssf/record/OldStringRecord;
.super Ljava/lang/Object;
.source "OldStringRecord.java"


# static fields
.field public static final biff2_sid:S = 0x7s

.field public static final biff345_sid:S = 0x207s


# instance fields
.field private codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

.field private field_1_string_len:S

.field private field_2_bytes:[B

.field private sid:S


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    .line 51
    :goto_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_1_string_len:S

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_2_bytes:[B

    .line 52
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    .line 53
    return-void
.end method

.method protected static getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "codepage"    # Lorg/apache/poi/hssf/record/CodepageRecord;

    .line 76
    const/16 v0, 0x6faf

    .line 77
    .local v0, "cp":I
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CodepageRecord;->getCodepage()S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 81
    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported codepage requested"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getSid()S
    .locals 1

    .line 60
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->field_2_bytes:[B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString([BLorg/apache/poi/hssf/record/CodepageRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBiff2()Z
    .locals 2

    .line 56
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->sid:S

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V
    .locals 0
    .param p1, "codepage"    # Lorg/apache/poi/hssf/record/CodepageRecord;

    .line 64
    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldStringRecord;->codepage:Lorg/apache/poi/hssf/record/CodepageRecord;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[OLD STRING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "    .string            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, "[/OLD STRING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
