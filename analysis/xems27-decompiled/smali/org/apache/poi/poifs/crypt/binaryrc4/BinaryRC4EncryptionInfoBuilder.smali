.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "BinaryRC4EncryptionInfoBuilder.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field decryptor:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

.field encryptor:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

.field header:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

.field info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field verifier:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
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

    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getDecryptor()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptor()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0
.end method

.method public bridge synthetic getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getEncryptor()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptor()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->encryptor:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    return-object v0
.end method

.method public bridge synthetic getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    return-object v0
.end method

.method public bridge synthetic getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getVerifier()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    return-object v0
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 1
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p3, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p4, "keyBits"    # I
    .param p5, "blockSize"    # I
    .param p6, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 51
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 52
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    .line 53
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    .line 54
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    .line 55
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->encryptor:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    .line 56
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

    .line 37
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v0

    .line 39
    .local v0, "vMajor":I
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v1

    .line 40
    .local v1, "vMinor":I
    nop

    .line 42
    new-instance v2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-direct {v2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    .line 43
    new-instance v2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-direct {v2, p2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    .line 44
    new-instance v2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    invoke-direct {v2, p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    .line 45
    new-instance v2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-direct {v2, p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;)V

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->encryptor:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    .line 46
    return-void
.end method
