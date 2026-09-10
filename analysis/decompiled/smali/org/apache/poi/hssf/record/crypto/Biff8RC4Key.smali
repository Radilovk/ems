.class public Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;
.super Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
.source "Biff8RC4Key.java"


# static fields
.field public static final KEY_DIGEST_LENGTH:I = 0x5

.field private static final PASSWORD_HASH_NUMBER_OF_BYTES_USED:I = 0x5

.field private static log:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>([B)V
    .locals 4
    .param p1, "keyDigest"    # [B

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;-><init>()V

    .line 46
    array-length v1, p1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected 5 byte key digest, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 51
    .local v0, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->_secretKey:Ljavax/crypto/SecretKey;

    .line 52
    return-void
.end method

.method private static check16Bytes([BLjava/lang/String;)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    .line 149
    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 16 byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/String;[B)Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # [B

    .prologue
    .line 59
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->createKeyDigest(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;-><init>([B)V

    return-object v0
.end method

.method static createKeyDigest(Ljava/lang/String;[B)[B
    .locals 12
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "docIdData"    # [B

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 102
    const-string v7, "docId"

    invoke-static {p1, v7}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->check16Bytes([BLjava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 104
    .local v3, "nChars":I
    mul-int/lit8 v7, v3, 0x2

    new-array v4, v7, [B

    .line 105
    .local v4, "passwordData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 107
    .local v0, "ch":C
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x0

    shl-int/lit8 v8, v0, 0x0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 108
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v8, v0, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "ch":C
    :cond_0
    sget-object v7, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 112
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 114
    .local v5, "passwordHash":[B
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 116
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_1

    .line 117
    invoke-virtual {v2, v5, v9, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 118
    array-length v7, p1

    invoke-virtual {v2, p1, v9, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7, v10}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v6

    .line 122
    .local v6, "result":[B
    return-object v6
.end method

.method private static xor([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    .line 142
    array-length v2, p0

    new-array v0, v2, [B

    .line 143
    .local v0, "c":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 144
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-object v0
.end method


# virtual methods
.method getCipher()Ljavax/crypto/Cipher;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 96
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 97
    .local v0, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->_secretKey:Ljavax/crypto/SecretKey;

    const/4 v3, 0x1

    invoke-static {v2, v0, v4, v4, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 98
    .local v1, "rc4":Ljavax/crypto/Cipher;
    return-object v1
.end method

.method initCipherForBlock(Ljavax/crypto/Cipher;I)V
    .locals 6
    .param p1, "rc4"    # Ljavax/crypto/Cipher;
    .param p2, "keyBlockNo"    # I

    .prologue
    .line 126
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 127
    .local v0, "buf":[B
    const/4 v4, 0x0

    invoke-static {v0, v4, p2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 129
    sget-object v4, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 130
    .local v2, "md5":Ljava/security/MessageDigest;
    iget-object v4, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->_secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->_secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    .local v3, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "Can\'t rekey for next block"

    invoke-direct {v4, v5, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public validate([B[B)Z
    .locals 11
    .param p1, "verifier"    # [B
    .param p2, "verifierHash"    # [B

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 66
    const-string/jumbo v7, "verifier"

    invoke-static {p1, v7}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->check16Bytes([BLjava/lang/String;)V

    .line 67
    const-string/jumbo v7, "verifierHash"

    invoke-static {p2, v7}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->check16Bytes([BLjava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    .line 71
    .local v3, "rc4":Ljavax/crypto/Cipher;
    invoke-virtual {p0, v3, v8}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->initCipherForBlock(Ljavax/crypto/Cipher;I)V

    .line 73
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 74
    .local v6, "verifierPrime":[B
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 77
    .local v4, "verifierHashPrime":[B
    const/4 v7, 0x0

    :try_start_0
    array-length v8, v6

    invoke-virtual {v3, v6, v7, v8, v6}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 78
    const/4 v7, 0x0

    array-length v8, v4

    invoke-virtual {v3, v4, v7, v8, v4}, Ljavax/crypto/Cipher;->update([BII[B)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    sget-object v7, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 84
    .local v2, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 87
    .local v1, "finalVerifierResult":[B
    sget-object v7, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v7, v10}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    invoke-static {v4, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->xor([B[B)[B

    move-result-object v7

    invoke-static {p2, v7}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->xor([B[B)[B

    move-result-object v5

    .line 89
    .local v5, "verifierHashThatWouldWork":[B
    sget-object v7, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->log:Lorg/apache/poi/util/POILogger;

    const-string/jumbo v8, "valid verifierHash value"

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v10, v8, v9}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .end local v5    # "verifierHashThatWouldWork":[B
    :cond_0
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    return v7

    .line 79
    .end local v1    # "finalVerifierResult":[B
    .end local v2    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    new-instance v7, Lorg/apache/poi/EncryptedDocumentException;

    const-string v8, "buffer too short"

    invoke-direct {v7, v8, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
