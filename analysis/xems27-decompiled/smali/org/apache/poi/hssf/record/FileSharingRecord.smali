.class public final Lorg/apache/poi/hssf/record/FileSharingRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FileSharingRecord.java"


# static fields
.field public static final sid:S = 0x5bs


# instance fields
.field private field_1_readonly:S

.field private field_2_password:S

.field private field_3_username_unicode_options:B

.field private field_3_username_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 46
    .local v0, "nameLen":I
    if-lez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    iput-byte v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_unicode_options:B

    .line 49
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    .line 53
    :goto_0
    return-void
.end method

.method public static hashPassword(Ljava/lang/String;)S
    .locals 5
    .param p0, "password"    # Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 59
    .local v0, "passwordCharacters":[B
    const/4 v1, 0x0

    .line 60
    .local v1, "hash":I
    array-length v2, v0

    if-lez v2, :cond_1

    .line 61
    array-length v2, v0

    .line 62
    .local v2, "charIndex":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "charIndex":I
    .local v3, "charIndex":I
    if-lez v2, :cond_0

    .line 63
    shr-int/lit8 v2, v1, 0xe

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v4, v1, 0x1

    and-int/lit16 v4, v4, 0x7fff

    or-int v1, v2, v4

    .line 64
    aget-byte v2, v0, v3

    xor-int/2addr v1, v2

    move v2, v3

    goto :goto_0

    .line 67
    :cond_0
    shr-int/lit8 v2, v1, 0xe

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v4, v1, 0x1

    and-int/lit16 v4, v4, 0x7fff

    or-int v1, v2, v4

    .line 68
    array-length v2, v0

    xor-int/2addr v1, v2

    .line 69
    const v2, 0xce4b

    xor-int/2addr v1, v2

    .line 71
    .end local v3    # "charIndex":I
    :cond_1
    int-to-short v2, v1

    return v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 163
    new-instance v0, Lorg/apache/poi/hssf/record/FileSharingRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FileSharingRecord;-><init>()V

    .line 164
    .local v0, "clone":Lorg/apache/poi/hssf/record/FileSharingRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setReadOnly(S)V

    .line 165
    iget-short v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setPassword(S)V

    .line 166
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FileSharingRecord;->setUsername(Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method protected getDataSize()I
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 149
    .local v0, "nameLen":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 150
    const/4 v1, 0x6

    return v1

    .line 152
    :cond_0
    add-int/lit8 v1, v0, 0x7

    return v1
.end method

.method public getPassword()S
    .locals 1

    .line 103
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    return v0
.end method

.method public getReadOnly()S
    .locals 1

    .line 89
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 156
    const/16 v0, 0x5b

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 138
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 139
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getPassword()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 140
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 141
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_unicode_options:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 143
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 145
    :cond_0
    return-void
.end method

.method public setPassword(S)V
    .locals 0
    .param p1, "password"    # S

    .line 96
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_2_password:S

    .line 97
    return-void
.end method

.method public setReadOnly(S)V
    .locals 0
    .param p1, "readonly"    # S

    .line 80
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_1_readonly:S

    .line 81
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FileSharingRecord;->field_3_username_value:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FILESHARING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "    .readonly       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getReadOnly()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v2, "    .password       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getPassword()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v2, "    .username       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FileSharingRecord;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, "[/FILESHARING]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
