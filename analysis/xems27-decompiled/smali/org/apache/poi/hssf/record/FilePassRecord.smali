.class public final Lorg/apache/poi/hssf/record/FilePassRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FilePassRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;,
        Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;,
        Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENCRYPTION_OTHER:I = 0x1

.field private static final ENCRYPTION_XOR:I = 0x0

.field public static final sid:S = 0x2fs


# instance fields
.field private _encryptionType:I

.field private _keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 179
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 180
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    .line 182
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    .line 188
    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encryption type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    .line 185
    nop

    .line 193
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;->read(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .param p1, "x1"    # I

    .line 31
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord;->read(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method private checkRc4()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
    .locals 3

    .line 226
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    .line 227
    .local v0, "rc4":Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
    if-eqz v0, :cond_0

    .line 230
    return-object v0

    .line 228
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v2, "file pass record doesn\'t contain a rc4 key."

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static read(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B
    .locals 1
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .param p1, "size"    # I

    .line 197
    new-array v0, p1, [B

    .line 198
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 199
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 287
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .line 209
    nop

    .line 210
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;->getDataSize()I

    move-result v0

    return v0
.end method

.method public getDocId()[B
    .locals 1

    .line 238
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->checkRc4()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method public getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSaltData()[B
    .locals 1

    .line 254
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->checkRc4()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getEncryptedVerifier()[B

    move-result-object v0

    return-object v0
.end method

.method public getSaltHash()[B
    .locals 1

    .line 270
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getEncryptedVerifierHash()[B

    move-result-object v0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 282
    const/16 v0, 0x2f

    return v0
.end method

.method public getXorKeyData()Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    instance-of v1, v0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 203
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 204
    nop

    .line 205
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 206
    return-void
.end method

.method public setDocId([B)V
    .locals 1
    .param p1, "docId"    # [B

    .line 246
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->checkRc4()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->setSalt([B)V

    .line 247
    return-void
.end method

.method public setSaltData([B)V
    .locals 1
    .param p1, "saltData"    # [B

    .line 262
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->setEncryptedVerifier([B)V

    .line 263
    return-void
.end method

.method public setSaltHash([B)V
    .locals 1
    .param p1, "saltHash"    # [B

    .line 278
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->setEncryptedVerifierHash([B)V

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FILEPASS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v1, "    .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    invoke-interface {v1, v0}, Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;->appendToString(Ljava/lang/StringBuffer;)V

    .line 296
    const-string v1, "[/FILEPASS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
