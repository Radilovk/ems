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
.field static final synthetic $assertionsDisabled:Z

.field private static final ENCRYPTION_OTHER:I = 0x1

.field private static final ENCRYPTION_XOR:I = 0x0

.field public static final sid:S = 0x2fs


# instance fields
.field private _encryptionType:I

.field private _keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/hssf/record/FilePassRecord;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 180
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    .line 182
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encryption type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_0
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    .line 193
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;->read(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 194
    return-void

    .line 187
    :pswitch_1
    new-instance v0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord;->read(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method private checkRc4()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    .line 227
    .local v0, "rc4":Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
    if-nez v0, :cond_0

    .line 228
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v2, "file pass record doesn\'t contain a rc4 key."

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    return-object v0
.end method

.method private static read(Lorg/apache/poi/hssf/record/RecordInputStream;I)[B
    .locals 1
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .param p1, "size"    # I

    .prologue
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

    .prologue
    .line 287
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lorg/apache/poi/hssf/record/FilePassRecord;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;->getDataSize()I

    move-result v0

    return v0
.end method

.method public getDocId()[B
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->checkRc4()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method public getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    instance-of v0, v0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSaltData()[B
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->checkRc4()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getEncryptedVerifier()[B

    move-result-object v0

    return-object v0
.end method

.method public getSaltHash()[B
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getEncryptedVerifierHash()[B

    move-result-object v0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 282
    const/16 v0, 0x2f

    return v0
.end method

.method public getXorKeyData()Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    instance-of v0, v0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    check-cast v0, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 203
    iget v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 204
    sget-boolean v0, Lorg/apache/poi/hssf/record/FilePassRecord;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_keyData:Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord$KeyData;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 206
    return-void
.end method

.method public setDocId([B)V
    .locals 1
    .param p1, "docId"    # [B

    .prologue
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

    .prologue
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

    .prologue
    .line 278
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->setEncryptedVerifierHash([B)V

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
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

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/FilePassRecord;->_encryptionType:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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
