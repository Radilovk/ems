.class public final Lorg/apache/poi/hssf/record/PasswordRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PasswordRecord.java"


# static fields
.field public static final sid:S = 0x13s


# instance fields
.field private field_1_password:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "password"    # I

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 36
    iput p1, p0, Lorg/apache/poi/hssf/record/PasswordRecord;->field_1_password:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/PasswordRecord;->field_1_password:I

    .line 41
    return-void
.end method

.method public static hashPassword(Ljava/lang/String;)S
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 96
    new-instance v0, Lorg/apache/poi/hssf/record/PasswordRecord;

    iget v1, p0, Lorg/apache/poi/hssf/record/PasswordRecord;->field_1_password:I

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/PasswordRecord;-><init>(I)V

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 85
    const/4 v0, 0x2

    return v0
.end method

.method public getPassword()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/apache/poi/hssf/record/PasswordRecord;->field_1_password:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 89
    const/16 v0, 0x13

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 81
    iget v0, p0, Lorg/apache/poi/hssf/record/PasswordRecord;->field_1_password:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 82
    return-void
.end method

.method public setPassword(I)V
    .locals 0
    .param p1, "password"    # I

    .line 59
    iput p1, p0, Lorg/apache/poi/hssf/record/PasswordRecord;->field_1_password:I

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PASSWORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "    .password = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/PasswordRecord;->field_1_password:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "[/PASSWORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
