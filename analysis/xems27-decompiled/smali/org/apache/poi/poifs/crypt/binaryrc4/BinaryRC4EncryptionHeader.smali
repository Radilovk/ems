.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "BinaryRC4EncryptionHeader.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    .line 31
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 32
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setKeySize(I)V

    .line 33
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setBlockSize(I)V

    .line 34
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    .line 35
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setSizeExtra(I)V

    .line 37
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setFlags(I)V

    .line 38
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setCspName(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 40
    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 0
    .param p1, "littleendianbytearrayoutputstream"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 43
    return-void
.end method
