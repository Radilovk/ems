.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "CryptoAPIEncryptionInfoBuilder.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field decryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

.field encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

.field header:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

.field info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field verifier:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getDecryptor()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptor()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0
.end method

.method public bridge synthetic getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getEncryptor()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptor()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    return-object v0
.end method

.method public bridge synthetic getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    return-object v0
.end method

.method public bridge synthetic getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getVerifier()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    return-object v0
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 7
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p3, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p4, "keyBits"    # I
    .param p5, "blockSize"    # I
    .param p6, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 55
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 56
    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 57
    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 58
    :cond_1
    const/4 v0, -0x1

    if-ne p4, v0, :cond_2

    const/16 p4, 0x28

    .line 59
    :cond_2
    nop

    .line 61
    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    iput-object v6, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    .line 62
    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    iput-object v6, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    .line 63
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    .line 64
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    .line 65
    return-void
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "dis"    # Lorg/apache/poi/util/LittleEndianInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 42
    invoke-interface {p2}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 43
    .local v0, "hSize":I
    new-instance v1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-direct {v1, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    .line 44
    new-instance v1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-direct {v1, p2, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    .line 45
    new-instance v1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    .line 46
    new-instance v1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    .line 47
    return-void
.end method
