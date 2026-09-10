.class public Lorg/apache/poi/poifs/crypt/CryptoFunctions;
.super Ljava/lang/Object;
.source "CryptoFunctions.java"


# static fields
.field private static final EncryptionMatrix:[[I

.field private static final InitialCodeArray:[I

.field private static final PadArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 309
    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->InitialCodeArray:[I

    .line 315
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->PadArray:[B

    .line 321
    new-array v0, v0, [[I

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_10

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->EncryptionMatrix:[[I

    return-void

    :array_0
    .array-data 4
        0xe1f0
        0x1d0f
        0xcc9c
        0x84c0
        0x110c
        0xe10
        0xf1ce
        0x313e
        0x1872
        0xe139
        0xd40f
        0x84f9
        0x280c
        0xa96a
        0x4ec3
    .end array-data

    :array_1
    .array-data 1
        -0x45t
        -0x1t
        -0x1t
        -0x46t
        -0x1t
        -0x1t
        -0x47t
        -0x80t
        0x0t
        -0x42t
        0xft
        0x0t
        -0x41t
        0xft
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0xaefc
        0x4dd9
        0x9bb2
        0x2745
        0x4e8a
        0x9d14
        0x2a09
    .end array-data

    :array_3
    .array-data 4
        0x7b61
        0xf6c2
        0xfda5
        0xeb6b
        0xc6f7
        0x9dcf
        0x2bbf
    .end array-data

    :array_4
    .array-data 4
        0x4563
        0x8ac6
        0x5ad
        0xb5a
        0x16b4
        0x2d68
        0x5ad0
    .end array-data

    :array_5
    .array-data 4
        0x375
        0x6ea
        0xdd4
        0x1ba8
        0x3750
        0x6ea0
        0xdd40
    .end array-data

    :array_6
    .array-data 4
        0xd849
        0xa0b3
        0x5147
        0xa28e
        0x553d
        0xaa7a
        0x44d5
    .end array-data

    :array_7
    .array-data 4
        0x6f45
        0xde8a
        0xad35
        0x4a4b
        0x9496
        0x390d
        0x721a
    .end array-data

    :array_8
    .array-data 4
        0xeb23
        0xc667
        0x9cef
        0x29ff
        0x53fe
        0xa7fc
        0x5fd9
    .end array-data

    :array_9
    .array-data 4
        0x47d3
        0x8fa6
        0xf6d
        0x1eda
        0x3db4
        0x7b68
        0xf6d0
    .end array-data

    :array_a
    .array-data 4
        0xb861
        0x60e3
        0xc1c6
        0x93ad
        0x377b
        0x6ef6
        0xddec
    .end array-data

    :array_b
    .array-data 4
        0x45a0
        0x8b40
        0x6a1
        0xd42
        0x1a84
        0x3508
        0x6a10
    .end array-data

    :array_c
    .array-data 4
        0xaa51
        0x4483
        0x8906
        0x22d
        0x45a
        0x8b4
        0x1168
    .end array-data

    :array_d
    .array-data 4
        0x76b4
        0xed68
        0xcaf1
        0x85c3
        0x1ba7
        0x374e
        0x6e9c
    .end array-data

    :array_e
    .array-data 4
        0x3730
        0x6e60
        0xdcc0
        0xa9a1
        0x4363
        0x86c6
        0x1dad
    .end array-data

    :array_f
    .array-data 4
        0x3331
        0x6662
        0xccc4
        0x89a9
        0x373
        0x6e6
        0xdcc
    .end array-data

    :array_10
    .array-data 4
        0x1021
        0x2042
        0x4084
        0x8108
        0x1231
        0x2462
        0x48c4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createXorArray1(Ljava/lang/String;)[B
    .locals 8
    .param p0, "password"    # Ljava/lang/String;

    .line 485
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 486
    :cond_0
    const-string v0, "ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 490
    .local v0, "passBytes":[B
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 491
    .local v1, "obfuscationArray":[B
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    sget-object v3, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->PadArray:[B

    array-length v4, v0

    array-length v5, v3

    array-length v6, v0

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorKey1(Ljava/lang/String;)I

    move-result v3

    .line 497
    .local v3, "xorKey":I
    const/4 v4, 0x2

    .line 499
    .local v4, "nRotateSize":I
    const/4 v5, 0x2

    new-array v5, v5, [B

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    ushr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    move-object v2, v5

    .line 500
    .local v2, "baseKeyLE":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 501
    aget-byte v6, v1, v5

    and-int/lit8 v7, v5, 0x1

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 502
    aget-byte v6, v1, v5

    invoke-static {v6, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeft(BI)B

    move-result v6

    aput-byte v6, v1, v5

    .line 500
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 505
    .end local v5    # "i":I
    :cond_1
    return-object v1
.end method

.method public static createXorKey1(Ljava/lang/String;)I
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .line 472
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static createXorVerifier1(Ljava/lang/String;)I
    .locals 2
    .param p0, "password"    # Ljava/lang/String;

    .line 457
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static createXorVerifier2(Ljava/lang/String;)I
    .locals 12
    .param p0, "password"    # Ljava/lang/String;

    .line 353
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 356
    .local v0, "generatedKey":[B
    const/16 v1, 0xf

    .line 358
    .local v1, "maxPasswordLength":I
    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    .line 367
    .local v2, "arrByteChars":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 368
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 369
    .local v6, "intTemp":I
    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    .line 370
    .local v7, "lowByte":B
    const v8, 0xff00

    and-int/2addr v8, v6

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    .line 371
    .local v8, "highByte":B
    if-eqz v7, :cond_0

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v8

    :goto_1
    aput-byte v9, v2, v5

    .line 367
    .end local v6    # "intTemp":I
    .end local v7    # "lowByte":B
    .end local v8    # "highByte":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 377
    .end local v5    # "i":I
    :cond_1
    sget-object v5, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->InitialCodeArray:[I

    array-length v6, v2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v5, v5, v6

    .line 383
    .local v5, "highOrderWord":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v8, v2

    if-ge v6, v8, :cond_4

    .line 384
    array-length v8, v2

    rsub-int/lit8 v8, v8, 0xf

    add-int/2addr v8, v6

    .line 385
    .local v8, "tmp":I
    const/4 v9, 0x0

    .local v9, "intBit":I
    :goto_3
    const/4 v10, 0x7

    if-ge v9, v10, :cond_3

    .line 386
    aget-byte v10, v2, v6

    shl-int v11, v7, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 387
    sget-object v10, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->EncryptionMatrix:[[I

    aget-object v10, v10, v8

    aget v10, v10, v9

    xor-int/2addr v5, v10

    .line 385
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 383
    .end local v8    # "tmp":I
    .end local v9    # "intBit":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 395
    .end local v6    # "i":I
    :cond_4
    const/4 v3, 0x0

    .line 398
    .local v3, "verifier":S
    array-length v6, v2

    sub-int/2addr v6, v7

    .restart local v6    # "i":I
    :goto_4
    if-ltz v6, :cond_5

    .line 400
    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeftBase15Bit(S)S

    move-result v3

    .line 401
    aget-byte v7, v2, v6

    xor-int/2addr v7, v3

    int-to-short v3, v7

    .line 398
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 406
    .end local v6    # "i":I
    :cond_5
    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeftBase15Bit(S)S

    move-result v3

    .line 407
    array-length v6, v2

    xor-int/2addr v6, v3

    int-to-short v3, v6

    .line 410
    const v6, 0xce4b

    xor-int/2addr v6, v3

    int-to-short v3, v6

    .line 415
    invoke-static {v0, v4, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 416
    const/4 v4, 0x2

    int-to-short v6, v5

    invoke-static {v0, v4, v6}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 419
    .end local v2    # "arrByteChars":[B
    .end local v3    # "verifier":S
    .end local v5    # "highOrderWord":I
    :cond_6
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v2

    return v2
.end method

.method public static generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B
    .locals 2
    .param p0, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p1, "salt"    # [B
    .param p2, "blockKey"    # [B
    .param p3, "blockSize"    # I

    .line 141
    move-object v0, p1

    .line 142
    .local v0, "iv":[B
    if-eqz p2, :cond_0

    .line 143
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 144
    .local v1, "hashAlgo":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 147
    .end local v1    # "hashAlgo":Ljava/security/MessageDigest;
    :cond_0
    invoke-static {v0, p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock36([BI)[B

    move-result-object v1

    return-object v1
.end method

.method public static generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B
    .locals 3
    .param p0, "passwordHash"    # [B
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p2, "blockKey"    # [B
    .param p3, "keySize"    # I

    .line 174
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 175
    .local v0, "hashAlgo":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 176
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 177
    .local v1, "key":[B
    invoke-static {v1, p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock36([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public static getBlock0([BI)[B
    .locals 1
    .param p0, "hash"    # [B
    .param p1, "size"    # I

    .line 258
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlockX([BIB)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBlock36([BI)[B
    .locals 1
    .param p0, "hash"    # [B
    .param p1, "size"    # I

    .line 246
    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlockX([BIB)[B

    move-result-object v0

    return-object v0
.end method

.method private static getBlockX([BIB)[B
    .locals 3
    .param p0, "hash"    # [B
    .param p1, "size"    # I
    .param p2, "fill"    # B

    .line 262
    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 264
    :cond_0
    new-array v0, p1, [B

    .line 265
    .local v0, "result":[B
    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([BB)V

    .line 266
    array-length v1, v0

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    return-object v0
.end method

.method public static getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "chain"    # Lorg/apache/poi/poifs/crypt/ChainingMode;
    .param p3, "vec"    # [B
    .param p4, "cipherMode"    # I
    .param p5, "padding"    # Ljava/lang/String;

    .line 201
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    .line 202
    .local v0, "keySizeInBytes":I
    if-nez p5, :cond_0

    const-string p5, "NoPadding"

    .line 206
    :cond_0
    :try_start_0
    iget-object v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v2, v0, 0x8

    if-lt v1, v2, :cond_5

    .line 211
    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p1, v1, :cond_1

    .line 212
    iget-object v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .local v1, "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 213
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_1
    iget-boolean v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->needsBouncyCastle:Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "/"

    if-eqz v1, :cond_2

    .line 214
    :try_start_1
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 217
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 220
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    :goto_0
    if-nez p3, :cond_3

    .line 221
    invoke-virtual {v1, p4, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_2

    .line 224
    :cond_3
    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p1, v2, :cond_4

    .line 225
    new-instance v2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3, p3}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    .local v2, "aps":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_1

    .line 227
    .end local v2    # "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 229
    .restart local v2    # "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_1
    invoke-virtual {v1, p4, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 231
    .end local v2    # "aps":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_2
    return-object v1

    .line 207
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_5
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Export Restrictions in place - please install JCE Unlimited Strength Jurisdiction Policy files"

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keySizeInBytes":I
    .end local p0    # "key":Ljava/security/Key;
    .end local p1    # "cipherAlgorithm":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local p2    # "chain":Lorg/apache/poi/poifs/crypt/ChainingMode;
    .end local p3    # "vec":[B
    .end local p4    # "cipherMode":I
    .end local p5    # "padding":Ljava/lang/String;
    throw v1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .restart local v0    # "keySizeInBytes":I
    .restart local p0    # "key":Ljava/security/Key;
    .restart local p1    # "cipherAlgorithm":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .restart local p2    # "chain":Lorg/apache/poi/poifs/crypt/ChainingMode;
    .restart local p3    # "vec":[B
    .restart local p4    # "cipherMode":I
    .restart local p5    # "padding":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v2, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;
    .locals 6
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "chain"    # Lorg/apache/poi/poifs/crypt/ChainingMode;
    .param p3, "vec"    # [B
    .param p4, "cipherMode"    # I

    .line 181
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;
    .locals 3
    .param p0, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 285
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->needsBouncyCastle:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    .line 287
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "hmac algo not supported"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;
    .locals 3
    .param p0, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->needsBouncyCastle:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    .line 274
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "hash algo not supported"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p2, "salt"    # [B
    .param p3, "spinCount"    # I

    .line 79
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B
    .locals 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p2, "salt"    # [B
    .param p3, "spinCount"    # I
    .param p4, "iteratorFirst"    # Z

    .line 97
    if-nez p0, :cond_0

    .line 98
    const-string p0, "VelvetSweatshop"

    .line 101
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 103
    .local v0, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 104
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 105
    .local v1, "hash":[B
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 107
    .local v2, "iterator":[B
    if-eqz p4, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 108
    .local v3, "first":[B
    :goto_0
    if-eqz p4, :cond_2

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 111
    .local v4, "second":[B
    :goto_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, p3, :cond_3

    .line 112
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v2, v6, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 113
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 114
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 116
    array-length v7, v1

    invoke-virtual {v0, v1, v6, v7}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 118
    .end local v5    # "i":I
    :catch_0
    move-exception v5

    .line 119
    .local v5, "e":Ljava/security/DigestException;
    new-instance v6, Lorg/apache/poi/EncryptedDocumentException;

    const-string v7, "error in password hashing"

    invoke-direct {v6, v7}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 120
    .end local v5    # "e":Ljava/security/DigestException;
    :cond_3
    nop

    .line 122
    return-object v1
.end method

.method public static registerBouncyCastle()V
    .locals 4

    .line 298
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 300
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 301
    .local v0, "cl":Ljava/lang/ClassLoader;
    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    .line 302
    .local v1, "bcProviderName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 303
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    invoke-static {v3}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    nop

    .line 307
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "bcProviderName":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/security/Provider;>;"
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Only the BouncyCastle provider supports your encryption settings - please add it to the classpath."

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static rotateLeft(BI)B
    .locals 3
    .param p0, "bits"    # B
    .param p1, "shift"    # I

    .line 509
    and-int/lit16 v0, p0, 0xff

    shl-int/2addr v0, p1

    and-int/lit16 v1, p0, 0xff

    rsub-int/lit8 v2, p1, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static rotateLeftBase15Bit(S)S
    .locals 3
    .param p0, "verifier"    # S

    .line 520
    and-int/lit16 v0, p0, 0x4000

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-short v0, v0

    .line 525
    .local v0, "intermediate1":S
    shl-int/lit8 v1, p0, 0x1

    and-int/lit16 v1, v1, 0x7fff

    int-to-short v1, v1

    .line 529
    .local v1, "intermediate2":S
    or-int v2, v0, v1

    int-to-short v2, v2

    .line 530
    .local v2, "intermediate3":S
    return v2
.end method

.method public static xorHashPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "password"    # Ljava/lang/String;

    .line 426
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result v0

    .line 427
    .local v0, "hashedPassword":I
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%1$08X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "password"    # Ljava/lang/String;

    .line 435
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, "hashedPassword":I
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    ushr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%1$02X%2$02X%3$02X%4$02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
