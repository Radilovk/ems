.class public Lcom/sun/mail/auth/Ntlm;
.super Ljava/lang/Object;
.source "Ntlm.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static hex:[C


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private fac:Ljavax/crypto/SecretKeyFactory;

.field private hostname:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private md4:Lcom/sun/mail/auth/MD4;

.field private ntdomain:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private type1:[B

.field private type3:[B

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    nop

    .line 359
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 358
    sput-object v0, Lcom/sun/mail/auth/Ntlm;->hex:[C

    .line 359
    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/mail/util/MailLogger;)V
    .locals 4
    .param p1, "ntdomain"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "logger"    # Lcom/sun/mail/util/MailLogger;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 130
    .local v0, "i":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 131
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 133
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 134
    if-eq v0, v2, :cond_1

    .line 135
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 136
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 137
    :cond_1
    if-nez p1, :cond_2

    .line 138
    const-string p1, ""

    goto :goto_1

    .line 137
    :cond_2
    :goto_0
    nop

    .line 140
    :goto_1
    iput-object p1, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "DEBUG NTLM"

    invoke-virtual {p5, v1, v2}, Lcom/sun/mail/util/MailLogger;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    .line 145
    invoke-direct {p0}, Lcom/sun/mail/auth/Ntlm;->init0()V

    .line 146
    return-void
.end method

.method private calcLMHash()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 214
    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 215
    .local v1, "magic":[B
    const/4 v2, 0x0

    .line 217
    .local v2, "pwb":[B
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iso-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 218
    goto :goto_0

    :catch_0
    move-exception v3

    .line 220
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    nop

    .line 222
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const/16 v3, 0xe

    new-array v4, v3, [B

    .line 223
    .local v4, "pwb1":[B
    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 224
    .local v5, "len":I
    if-le v5, v3, :cond_0

    .line 225
    const/16 v5, 0xe

    .line 226
    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    new-instance v6, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {p0, v4, v3}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 229
    .local v6, "dks1":Ljavax/crypto/spec/DESKeySpec;
    new-instance v7, Ljavax/crypto/spec/DESKeySpec;

    const/4 v8, 0x7

    invoke-direct {p0, v4, v8}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 231
    .local v7, "dks2":Ljavax/crypto/spec/DESKeySpec;
    iget-object v8, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v8, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 232
    .local v8, "key1":Ljavax/crypto/SecretKey;
    iget-object v9, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v9, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 233
    .local v9, "key2":Ljavax/crypto/SecretKey;
    iget-object v10, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 234
    iget-object v10, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v10, v1, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v10

    .line 235
    .local v10, "out1":[B
    iget-object v12, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v12, v11, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 236
    iget-object v11, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v11, v1, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v11

    .line 238
    .local v11, "out2":[B
    const/16 v12, 0x15

    new-array v12, v12, [B

    .line 239
    .local v12, "result":[B
    invoke-static {v10, v3, v12, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    invoke-static {v11, v3, v12, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    return-object v12

    nop

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method private calcNTHash()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, "pw":[B
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->password:Ljava/lang/String;

    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 248
    goto :goto_0

    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 251
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->md4:Lcom/sun/mail/auth/MD4;

    invoke-virtual {v1, v0}, Lcom/sun/mail/auth/MD4;->digest([B)[B

    move-result-object v1

    .line 252
    .local v1, "out":[B
    const/16 v2, 0x15

    new-array v2, v2, [B

    .line 253
    .local v2, "result":[B
    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-object v2
.end method

.method private calcResponse([B[B)[B
    .locals 13
    .param p1, "key"    # [B
    .param p2, "text"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 264
    nop

    .line 265
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 266
    .local v0, "dks1":Ljavax/crypto/spec/DESKeySpec;
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 267
    .local v2, "dks2":Ljavax/crypto/spec/DESKeySpec;
    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    const/16 v4, 0xe

    invoke-direct {p0, p1, v4}, Lcom/sun/mail/auth/Ntlm;->makeDesKey([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 268
    .local v3, "dks3":Ljavax/crypto/spec/DESKeySpec;
    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v4, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 269
    .local v4, "key1":Ljavax/crypto/SecretKey;
    iget-object v5, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v5, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 270
    .local v5, "key2":Ljavax/crypto/SecretKey;
    iget-object v6, p0, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v6, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 271
    .local v6, "key3":Ljavax/crypto/SecretKey;
    iget-object v7, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 272
    iget-object v7, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    const/16 v9, 0x8

    invoke-virtual {v7, p2, v1, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v7

    .line 273
    .local v7, "out1":[B
    iget-object v10, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v10, v8, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 274
    iget-object v10, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v10, p2, v1, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v10

    .line 275
    .local v10, "out2":[B
    iget-object v11, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v11, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 276
    iget-object v8, p0, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v8, p2, v1, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v8

    .line 277
    .local v8, "out3":[B
    const/16 v11, 0x18

    new-array v11, v11, [B

    .line 278
    .local v11, "result":[B
    invoke-static {v7, v1, v11, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-static {v10, v1, v11, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    const/16 v12, 0x10

    invoke-static {v8, v1, v11, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    return-object v11
.end method

.method private copybytes([BILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "destpos"    # I
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "enc"    # Ljava/lang/String;

    .line 150
    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 151
    .local v0, "x":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "x":[B
    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 155
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void
.end method

.method private init0()V
    .locals 20

    .line 87
    move-object/from16 v1, p0

    const/16 v0, 0x100

    new-array v2, v0, [B

    iput-object v2, v1, Lcom/sun/mail/auth/Ntlm;->type1:[B

    .line 88
    new-array v0, v0, [B

    iput-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    .line 89
    const/16 v0, 0x9

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/16 v5, 0x4e

    aput-byte v5, v3, v4

    const/4 v6, 0x1

    const/16 v7, 0x54

    aput-byte v7, v3, v6

    const/4 v8, 0x2

    const/16 v9, 0x4c

    aput-byte v9, v3, v8

    const/4 v10, 0x3

    const/16 v11, 0x4d

    aput-byte v11, v3, v10

    const/4 v12, 0x4

    const/16 v13, 0x53

    aput-byte v13, v3, v12

    const/4 v14, 0x5

    aput-byte v13, v3, v14

    const/4 v15, 0x6

    const/16 v16, 0x50

    aput-byte v16, v3, v15

    const/16 v17, 0x8

    aput-byte v6, v3, v17

    .line 90
    nop

    .line 89
    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v2, v1, Lcom/sun/mail/auth/Ntlm;->type1:[B

    const/16 v3, 0xc

    aput-byte v10, v2, v3

    .line 92
    const/16 v18, 0xd

    const/16 v19, -0x4e

    aput-byte v19, v2, v18

    .line 93
    const/16 v18, 0x1c

    const/16 v19, 0x20

    aput-byte v19, v2, v18

    .line 94
    new-array v2, v0, [B

    aput-byte v5, v2, v4

    aput-byte v7, v2, v6

    aput-byte v9, v2, v8

    aput-byte v11, v2, v10

    aput-byte v13, v2, v12

    aput-byte v13, v2, v14

    aput-byte v16, v2, v15

    aput-byte v10, v2, v17

    .line 95
    iget-object v5, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    .line 94
    invoke-static {v2, v4, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v2, 0x18

    aput-byte v2, v0, v3

    .line 97
    const/16 v3, 0xe

    aput-byte v2, v0, v3

    .line 98
    const/16 v3, 0x14

    aput-byte v2, v0, v3

    .line 99
    const/16 v3, 0x16

    aput-byte v2, v0, v3

    .line 100
    const/16 v2, 0x40

    aput-byte v2, v0, v19

    .line 101
    const/16 v2, 0x3c

    aput-byte v6, v0, v2

    .line 102
    const/16 v2, 0x3d

    const/16 v3, -0x7e

    aput-byte v3, v0, v2

    .line 105
    :try_start_0
    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/mail/auth/Ntlm;->fac:Ljavax/crypto/SecretKeyFactory;

    .line 106
    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/mail/auth/Ntlm;->cipher:Ljavax/crypto/Cipher;

    .line 107
    new-instance v0, Lcom/sun/mail/auth/MD4;

    invoke-direct {v0}, Lcom/sun/mail/auth/MD4;-><init>()V

    iput-object v0, v1, Lcom/sun/mail/auth/Ntlm;->md4:Lcom/sun/mail/auth/MD4;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    nop

    .line 113
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_0
    return-void
.end method

.method private makeDesKey([BI)[B
    .locals 11
    .param p1, "input"    # [B
    .param p2, "off"    # I

    .line 197
    array-length v0, p1

    new-array v0, v0, [I

    .line 198
    .local v0, "in":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 201
    .end local v1    # "i":I
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 202
    .local v1, "out":[B
    add-int/lit8 v2, p2, 0x0

    aget v2, v0, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 203
    add-int/lit8 v2, p2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x7

    shl-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p2, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    shr-int/2addr v4, v5

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 204
    add-int/lit8 v2, p2, 0x1

    aget v2, v0, v2

    const/4 v4, 0x6

    shl-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v6, p2, 0x2

    aget v6, v0, v6

    const/4 v7, 0x2

    shr-int/2addr v6, v7

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 205
    add-int/lit8 v2, p2, 0x2

    aget v2, v0, v2

    const/4 v6, 0x5

    shl-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v8, p2, 0x3

    aget v8, v0, v8

    const/4 v9, 0x3

    shr-int/2addr v8, v9

    or-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    .line 206
    add-int/lit8 v2, p2, 0x3

    aget v2, v0, v2

    const/4 v8, 0x4

    shl-int/2addr v2, v8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v10, p2, 0x4

    aget v10, v0, v10

    shr-int/2addr v10, v8

    or-int/2addr v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 207
    add-int/lit8 v2, p2, 0x4

    aget v2, v0, v2

    shl-int/2addr v2, v9

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v8, p2, 0x5

    aget v8, v0, v8

    shr-int/2addr v8, v6

    or-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 208
    add-int/lit8 v2, p2, 0x5

    aget v2, v0, v2

    shl-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v6, p2, 0x6

    aget v6, v0, v6

    shr-int/2addr v6, v4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 209
    add-int/lit8 v2, p2, 0x6

    aget v2, v0, v2

    shl-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 210
    return-object v1

    .line 199
    .local v1, "i":I
    :cond_0
    aget-byte v2, p1, v1

    if-gez v2, :cond_1

    aget-byte v2, p1, v1

    add-int/lit16 v2, v2, 0x100

    goto :goto_1

    :cond_1
    aget-byte v2, p1, v1

    :goto_1
    aput v2, v0, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .line 362
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 363
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 365
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 364
    .restart local v1    # "i":I
    :cond_0
    sget-object v2, Lcom/sun/mail/auth/Ntlm;->hex:[C

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/sun/mail/auth/Ntlm;->hex:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public generateType1Msg(I)Ljava/lang/String;
    .locals 7
    .param p1, "flags"    # I

    .line 159
    iget-object v0, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 160
    .local v0, "dlen":I
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    const/16 v3, 0x10

    aput-byte v2, v1, v3

    .line 161
    div-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    const/16 v4, 0x11

    aput-byte v2, v1, v4

    .line 162
    aget-byte v2, v1, v3

    const/16 v3, 0x12

    aput-byte v2, v1, v3

    .line 163
    aget-byte v2, v1, v4

    const/16 v3, 0x13

    aput-byte v2, v1, v3

    .line 164
    if-nez v0, :cond_0

    .line 165
    const/16 v2, 0xd

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, -0x11

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 168
    .local v1, "hlen":I
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    const/16 v4, 0x18

    aput-byte v3, v2, v4

    .line 169
    div-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    const/16 v5, 0x19

    aput-byte v3, v2, v5

    .line 170
    const/16 v3, 0x1a

    aget-byte v4, v2, v4

    aput-byte v4, v2, v3

    .line 171
    const/16 v3, 0x1b

    aget-byte v4, v2, v5

    aput-byte v4, v2, v3

    .line 173
    iget-object v3, p0, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    const/16 v4, 0x20

    const-string v5, "iso-8859-1"

    invoke-direct {p0, v2, v4, v3, v5}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    add-int/lit8 v3, v1, 0x20

    iget-object v4, p0, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->type1:[B

    const/16 v3, 0x14

    add-int/lit8 v4, v1, 0x20

    rem-int/lit16 v4, v4, 0x100

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 176
    const/16 v3, 0x15

    add-int/lit8 v4, v1, 0x20

    div-int/lit16 v4, v4, 0x100

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 178
    add-int/lit8 v3, v1, 0x20

    add-int/2addr v3, v0

    new-array v3, v3, [B

    .line 179
    .local v3, "msg":[B
    add-int/lit8 v4, v1, 0x20

    add-int/2addr v4, v0

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "type 1 message: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sun/mail/auth/Ntlm;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 183
    :cond_1
    const/4 v2, 0x0

    .line 185
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 186
    goto :goto_0

    :catch_0
    move-exception v4

    .line 187
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 189
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v2
.end method

.method public generateType3Msg(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "challenge"    # Ljava/lang/String;

    .line 289
    move-object/from16 v1, p0

    const-string v2, "UnicodeLittleUnmarked"

    const/4 v3, 0x0

    .line 291
    .local v3, "type2":[B
    :try_start_0
    const-string v0, "us-ascii"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v4, p1

    :try_start_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    .line 292
    goto :goto_1

    .line 351
    .end local v3    # "type2":[B
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 292
    .restart local v3    # "type2":[B
    :catch_1
    move-exception v0

    goto :goto_0

    .line 351
    .end local v3    # "type2":[B
    :catch_2
    move-exception v0

    move-object/from16 v4, p1

    goto/16 :goto_4

    .line 292
    .restart local v3    # "type2":[B
    :catch_3
    move-exception v0

    move-object/from16 v4, p1

    .line 294
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    nop

    .line 296
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const/16 v0, 0x8

    :try_start_2
    new-array v5, v0, [B

    .line 297
    .local v5, "nonce":[B
    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-static {v3, v7, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v8, v0, 0x2

    .line 300
    .local v8, "ulen":I
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v9, 0x24

    iget-object v10, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v11, 0x26

    rem-int/lit16 v12, v8, 0x100

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    aput-byte v12, v0, v9

    .line 301
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v9, 0x25

    iget-object v10, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v11, 0x27

    div-int/lit16 v12, v8, 0x100

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    aput-byte v12, v0, v9

    .line 302
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v9, v0, 0x2

    .line 303
    .local v9, "dlen":I
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v10, 0x1c

    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v12, 0x1e

    rem-int/lit16 v13, v9, 0x100

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    aput-byte v13, v0, v10

    .line 304
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v10, 0x1d

    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v12, 0x1f

    div-int/lit16 v13, v9, 0x100

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    aput-byte v13, v0, v10

    .line 305
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v10, v0, 0x2

    .line 306
    .local v10, "hlen":I
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v11, 0x2c

    iget-object v12, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v13, 0x2e

    rem-int/lit16 v14, v10, 0x100

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    aput-byte v14, v0, v11

    .line 307
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v11, 0x2d

    iget-object v12, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v13, 0x2f

    div-int/lit16 v14, v10, 0x100

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    aput-byte v14, v0, v11

    .line 309
    const/16 v0, 0x40

    .line 310
    .local v0, "l":I
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    iget-object v12, v1, Lcom/sun/mail/auth/Ntlm;->ntdomain:Ljava/lang/String;

    invoke-direct {v1, v11, v0, v12, v2}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v12, 0x20

    rem-int/lit16 v13, v0, 0x100

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 312
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v12, 0x21

    div-int/lit16 v13, v0, 0x100

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 313
    add-int/2addr v0, v9

    .line 314
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    iget-object v12, v1, Lcom/sun/mail/auth/Ntlm;->username:Ljava/lang/String;

    invoke-direct {v1, v11, v0, v12, v2}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v12, 0x28

    rem-int/lit16 v13, v0, 0x100

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 316
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v12, 0x29

    div-int/lit16 v13, v0, 0x100

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 317
    add-int/2addr v0, v8

    .line 318
    iget-object v11, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    iget-object v12, v1, Lcom/sun/mail/auth/Ntlm;->hostname:Ljava/lang/String;

    invoke-direct {v1, v11, v0, v12, v2}, Lcom/sun/mail/auth/Ntlm;->copybytes([BILjava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v11, 0x30

    rem-int/lit16 v12, v0, 0x100

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    .line 320
    iget-object v2, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v11, 0x31

    div-int/lit16 v12, v0, 0x100

    int-to-byte v12, v12

    aput-byte v12, v2, v11

    .line 321
    add-int/2addr v0, v10

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/auth/Ntlm;->calcLMHash()[B

    move-result-object v2

    .line 324
    .local v2, "lmhash":[B
    invoke-direct {v1, v2, v5}, Lcom/sun/mail/auth/Ntlm;->calcResponse([B[B)[B

    move-result-object v11

    .line 325
    .local v11, "lmresponse":[B
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/auth/Ntlm;->calcNTHash()[B

    move-result-object v12

    .line 326
    .local v12, "nthash":[B
    invoke-direct {v1, v12, v5}, Lcom/sun/mail/auth/Ntlm;->calcResponse([B[B)[B

    move-result-object v13

    .line 327
    .local v13, "ntresponse":[B
    iget-object v14, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    invoke-static {v11, v6, v14, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v14, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v15, 0x10

    rem-int/lit16 v6, v0, 0x100

    int-to-byte v6, v6

    aput-byte v6, v14, v15

    .line 329
    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v14, 0x11

    div-int/lit16 v15, v0, 0x100

    int-to-byte v15, v15

    aput-byte v15, v6, v14

    .line 330
    add-int/2addr v0, v7

    .line 331
    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/4 v14, 0x0

    invoke-static {v13, v14, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    rem-int/lit16 v14, v0, 0x100

    int-to-byte v14, v14

    aput-byte v14, v6, v7

    .line 333
    iget-object v6, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v14, 0x19

    div-int/lit16 v15, v0, 0x100

    int-to-byte v15, v15

    aput-byte v15, v6, v14

    .line 334
    add-int/lit8 v6, v0, 0x18

    .line 335
    .end local v0    # "l":I
    .local v6, "l":I
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v7, 0x38

    rem-int/lit16 v14, v6, 0x100

    int-to-byte v14, v14

    aput-byte v14, v0, v7

    .line 336
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/16 v7, 0x39

    div-int/lit16 v14, v6, 0x100

    int-to-byte v14, v14

    aput-byte v14, v0, v7

    .line 338
    new-array v0, v6, [B

    move-object v7, v0

    .line 339
    .local v7, "msg":[B
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->type3:[B

    const/4 v14, 0x0

    invoke-static {v0, v14, v7, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "type 3 message: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/sun/mail/auth/Ntlm;->toHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    :cond_0
    const/4 v14, 0x0

    .line 345
    .local v14, "result":Ljava/lang/String;
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v15
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v16, v2

    .end local v2    # "lmhash":[B
    .local v16, "lmhash":[B
    :try_start_4
    const-string v2, "iso-8859-1"

    invoke-direct {v0, v15, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v14, v0

    .line 346
    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    .end local v16    # "lmhash":[B
    .restart local v2    # "lmhash":[B
    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    .line 347
    .end local v2    # "lmhash":[B
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .restart local v16    # "lmhash":[B
    :goto_2
    nop

    .line 349
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    return-object v14

    .line 353
    .end local v3    # "type2":[B
    .end local v5    # "nonce":[B
    .end local v6    # "l":I
    .end local v7    # "msg":[B
    .end local v8    # "ulen":I
    .end local v9    # "dlen":I
    .end local v10    # "hlen":I
    .end local v11    # "lmresponse":[B
    .end local v12    # "nthash":[B
    .end local v13    # "ntresponse":[B
    .end local v14    # "result":Ljava/lang/String;
    .end local v16    # "lmhash":[B
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    :goto_4
    iget-object v2, v1, Lcom/sun/mail/auth/Ntlm;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "GeneralSecurityException"

    invoke-virtual {v2, v3, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    const-string v2, ""

    return-object v2
.end method
