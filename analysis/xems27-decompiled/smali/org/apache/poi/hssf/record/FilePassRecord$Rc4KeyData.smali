.class public Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
.super Ljava/lang/Object;
.source "FilePassRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/FilePassRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rc4KeyData"
.end annotation


# static fields
.field private static final ENCRYPTION_OTHER_CAPI_2:I = 0x2

.field private static final ENCRYPTION_OTHER_CAPI_3:I = 0x3

.field private static final ENCRYPTION_OTHER_CAPI_4:I = 0x4

.field private static final ENCRYPTION_OTHER_RC4:I = 0x1


# instance fields
.field private _encryptedVerifier:[B

.field private _encryptedVerifierHash:[B

.field private _encryptionInfo:I

.field private _minorVersionNo:I

.field private _salt:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendToString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 116
    const-string v0, "    .rc4.info = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptionInfo:I

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v1, "    .rc4.ver  = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_minorVersionNo:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, "    .rc4.salt = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_salt:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v1, "    .rc4.verifier = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifier:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v1, "    .rc4.verifierHash = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifierHash:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    return-void
.end method

.method public getDataSize()I
    .locals 1

    .line 88
    const/16 v0, 0x36

    return v0
.end method

.method public getEncryptedVerifier()[B
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifier:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncryptedVerifierHash()[B
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifierHash:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_salt:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public read(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptionInfo:I

    .line 58
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encryption info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptionInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "HSSF does not currently support CryptoAPI encryption"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    nop

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_minorVersionNo:I

    .line 71
    if-ne v0, v1, :cond_2

    .line 74
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->access$000(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_salt:[B

    .line 75
    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->access$000(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifier:[B

    .line 76
    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->access$000(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifierHash:[B

    .line 77
    return-void

    .line 72
    :cond_2
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected VersionInfo number for RC4Header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_minorVersionNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 80
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptionInfo:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 81
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_minorVersionNo:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 82
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_salt:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 83
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifier:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 84
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifierHash:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 85
    return-void
.end method

.method public setEncryptedVerifier([B)V
    .locals 1
    .param p1, "encryptedVerifier"    # [B

    .line 104
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifier:[B

    .line 105
    return-void
.end method

.method public setEncryptedVerifierHash([B)V
    .locals 1
    .param p1, "encryptedVerifierHash"    # [B

    .line 112
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_encryptedVerifierHash:[B

    .line 113
    return-void
.end method

.method public setSalt([B)V
    .locals 1
    .param p1, "salt"    # [B

    .line 96
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->_salt:[B

    .line 97
    return-void
.end method
