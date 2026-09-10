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

    .line 43
    const-class v0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>([B)V
    .locals 3
    .param p1, "keyDigest"    # [B

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;-><init>()V

    .line 46
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 50
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 51
    .local v0, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->_secretKey:Ljavax/crypto/SecretKey;

    .line 52
    return-void

    .line 47
    .end local v0    # "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 5 byte key digest, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static check16Bytes([BLjava/lang/String;)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "argName"    # Ljava/lang/String;

    .line 149
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 16 byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/String;[B)Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;
    .locals 2
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # [B

    .line 59
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->createKeyDigest(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;-><init>([B)V

    return-object v0
.end method

.method static createKeyDigest(Ljava/lang/String;[B)[B
    .locals 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "docIdData"    # [B

    .line 102
    const-string v0, "docId"

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->check16Bytes([BLjava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 104
    .local v0, "nChars":I
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    .line 105
    .local v2, "passwordData":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    .line 106
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 107
    .local v5, "ch":C
    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    shl-int/lit8 v4, v5, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 108
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 105
    .end local v5    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "i":I
    :cond_0
    sget-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 112
    .local v3, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 114
    .local v5, "passwordHash":[B
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 116
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v7, 0x5

    if-ge v6, v1, :cond_1

    .line 117
    invoke-virtual {v3, v5, v4, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 118
    array-length v7, p1

    invoke-virtual {v3, p1, v4, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 116
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 121
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1, v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v1

    .line 122
    .local v1, "result":[B
    return-object v1
.end method

.method private static xor([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 142
    array-length v0, p0

    new-array v0, v0, [B

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
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method getCipher()Ljavax/crypto/Cipher;
    .locals 4

    .line 96
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 97
    .local v0, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->_secretKey:Ljavax/crypto/SecretKey;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v2, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 98
    .local v1, "rc4":Ljavax/crypto/Cipher;
    return-object v1
.end method

.method initCipherForBlock(Ljavax/crypto/Cipher;I)V
    .locals 6
    .param p1, "rc4"    # Ljavax/crypto/Cipher;
    .param p2, "keyBlockNo"    # I

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 127
    .local v0, "buf":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 129
    sget-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 130
    .local v1, "md5":Ljava/security/MessageDigest;
    iget-object v2, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->_secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->_secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    nop

    .line 139
    return-void

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "Can\'t rekey for next block"

    invoke-direct {v4, v5, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public validate([B[B)Z
    .locals 10
    .param p1, "verifier"    # [B
    .param p2, "verifierHash"    # [B

    .line 66
    const-string v0, "verifier"

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->check16Bytes([BLjava/lang/String;)V

    .line 67
    const-string v0, "verifierHash"

    invoke-static {p2, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->check16Bytes([BLjava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 71
    .local v0, "rc4":Ljavax/crypto/Cipher;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->initCipherForBlock(Ljavax/crypto/Cipher;I)V

    .line 73
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 74
    .local v2, "verifierPrime":[B
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 77
    .local v3, "verifierHashPrime":[B
    :try_start_0
    array-length v4, v2

    invoke-virtual {v0, v2, v1, v4, v2}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 78
    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4, v3}, Ljavax/crypto/Cipher;->update([BII[B)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 83
    sget-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 84
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 85
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 87
    .local v4, "finalVerifierResult":[B
    sget-object v5, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->log:Lorg/apache/poi/util/POILogger;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    invoke-static {v3, v4}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->xor([B[B)[B

    move-result-object v5

    invoke-static {p2, v5}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->xor([B[B)[B

    move-result-object v5

    .line 89
    .local v5, "verifierHashThatWouldWork":[B
    sget-object v7, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->log:Lorg/apache/poi/util/POILogger;

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v8

    const-string v9, "valid verifierHash value"

    invoke-virtual {v7, v6, v9, v8}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .end local v5    # "verifierHashThatWouldWork":[B
    :cond_0
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    return v5

    .line 79
    .end local v1    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "finalVerifierResult":[B
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljavax/crypto/ShortBufferException;
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "buffer too short"

    invoke-direct {v4, v5, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
