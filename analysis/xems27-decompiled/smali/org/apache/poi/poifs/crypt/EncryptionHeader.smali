.class public abstract Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.super Ljava/lang/Object;
.source "EncryptionHeader.java"


# static fields
.field public static final ALGORITHM_AES_128:I

.field public static final ALGORITHM_AES_192:I

.field public static final ALGORITHM_AES_256:I

.field public static final ALGORITHM_RC4:I

.field public static final HASH_NONE:I

.field public static final HASH_SHA1:I

.field public static final HASH_SHA256:I

.field public static final HASH_SHA384:I

.field public static final HASH_SHA512:I

.field public static final MODE_CBC:I

.field public static final MODE_CFB:I

.field public static final MODE_ECB:I

.field public static final PROVIDER_AES:I

.field public static final PROVIDER_RC4:I


# instance fields
.field private blockSize:I

.field private chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field private cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field private cspName:Ljava/lang/String;

.field private flags:I

.field private hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private keyBits:I

.field private keySalt:[B

.field private providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field private sizeExtra:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_RC4:I

    .line 26
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_128:I

    .line 27
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_192:I

    .line 28
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_256:I

    .line 30
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_NONE:I

    .line 31
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA1:I

    .line 32
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA256:I

    .line 33
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA384:I

    .line 34
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA512:I

    .line 36
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->PROVIDER_RC4:I

    .line 37
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->PROVIDER_AES:I

    .line 39
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_ECB:I

    .line 40
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_CBC:I

    .line 41
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_CFB:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    return v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 126
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    return v0
.end method

.method public getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method

.method public getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method

.method public getCipherMode()I
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    return v0
.end method

.method public getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-object v0
.end method

.method public getCspName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    return v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    return v0
.end method

.method public getHashAlgorithmEx()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getKeySalt()[B
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    return v0
.end method

.method public getProviderType()I
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    return v0
.end method

.method public getSizeExtra()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    return v0
.end method

.method protected setBlockSize(I)V
    .locals 0
    .param p1, "blockSize"    # I

    .line 130
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    .line 131
    return-void
.end method

.method protected setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0
    .param p1, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 68
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 69
    return-void
.end method

.method protected setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 0
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 99
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 100
    return-void
.end method

.method protected setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V
    .locals 0
    .param p1, "providerType"    # Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 153
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 154
    return-void
.end method

.method protected setCspName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cspName"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method protected setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 76
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    .line 77
    return-void
.end method

.method protected setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 114
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 115
    return-void
.end method

.method protected setKeySalt([B)V
    .locals 0
    .param p1, "salt"    # [B

    .line 138
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    .line 139
    return-void
.end method

.method protected setKeySize(I)V
    .locals 0
    .param p1, "keyBits"    # I

    .line 122
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    .line 123
    return-void
.end method

.method protected setSizeExtra(I)V
    .locals 0
    .param p1, "sizeExtra"    # I

    .line 84
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    .line 85
    return-void
.end method
