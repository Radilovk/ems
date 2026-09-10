.class public Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;
.super Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
.source "Biff8XORKey.java"


# instance fields
.field final _xorKey:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "xorKey"    # I

    .line 28
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;-><init>()V

    .line 29
    iput p2, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;->_xorKey:I

    .line 30
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorArray1(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    .local v0, "xorArray":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "XOR"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;->_secretKey:Ljavax/crypto/SecretKey;

    .line 32
    return-void
.end method

.method public static create(Ljava/lang/String;I)Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "xorKey"    # I

    .line 35
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public validate(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "verifier"    # I

    .line 39
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorKey1(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "keyComp":I
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, "verifierComp":I
    iget v2, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;->_xorKey:I

    if-ne v2, v0, :cond_0

    if-ne v1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
