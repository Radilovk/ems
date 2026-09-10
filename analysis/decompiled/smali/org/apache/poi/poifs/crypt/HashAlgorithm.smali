.class public final enum Lorg/apache/poi/poifs/crypt/HashAlgorithm;
.super Ljava/lang/Enum;
.source "HashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/poifs/crypt/HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum ripemd128:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha224:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum whirlpool:Lorg/apache/poi/poifs/crypt/HashAlgorithm;


# instance fields
.field public final ecmaId:I

.field public final ecmaString:Ljava/lang/String;

.field public final hashSize:I

.field public final jceHmacId:Ljava/lang/String;

.field public final jceId:Ljava/lang/String;

.field public final needsBouncyCastle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x2

    const/16 v14, 0x10

    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v1, "none"

    const-string v3, ""

    const-string v5, ""

    const-string v7, ""

    move v4, v2

    move v6, v2

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 24
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "sha1"

    const-string v6, "SHA-1"

    const v7, 0x8004

    const-string v8, "SHA1"

    const/16 v9, 0x14

    const-string v10, "HmacSHA1"

    move v5, v12

    move v11, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 25
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "sha256"

    const-string v6, "SHA-256"

    const v7, 0x800c

    const-string v8, "SHA256"

    const/16 v9, 0x20

    const-string v10, "HmacSHA256"

    move v5, v15

    move v11, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 26
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "sha384"

    const/4 v5, 0x3

    const-string v6, "SHA-384"

    const v7, 0x800d

    const-string v8, "SHA384"

    const/16 v9, 0x30

    const-string v10, "HmacSHA384"

    move v11, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 27
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "sha512"

    const/4 v5, 0x4

    const-string v6, "SHA-512"

    const v7, 0x800e

    const-string v8, "SHA512"

    const/16 v9, 0x40

    const-string v10, "HmacSHA512"

    move v11, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 29
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "md5"

    const/4 v5, 0x5

    const-string v6, "MD5"

    const-string v8, "MD5"

    const-string v10, "HmacMD5"

    move v7, v13

    move v9, v14

    move v11, v2

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 31
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "md2"

    const/4 v5, 0x6

    const-string v6, "MD2"

    const-string v8, "MD2"

    const-string v10, "Hmac-MD2"

    move v7, v13

    move v9, v14

    move v11, v12

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 32
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "md4"

    const/4 v5, 0x7

    const-string v6, "MD4"

    const-string v8, "MD4"

    const-string v10, "Hmac-MD4"

    move v7, v13

    move v9, v14

    move v11, v12

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 33
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "ripemd128"

    const/16 v5, 0x8

    const-string v6, "RipeMD128"

    const-string v8, "RIPEMD-128"

    const-string v10, "HMac-RipeMD128"

    move v7, v13

    move v9, v14

    move v11, v12

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd128:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 34
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "ripemd160"

    const/16 v5, 0x9

    const-string v6, "RipeMD160"

    const-string v8, "RIPEMD-160"

    const/16 v9, 0x14

    const-string v10, "HMac-RipeMD160"

    move v7, v13

    move v11, v12

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 35
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string/jumbo v4, "whirlpool"

    const/16 v5, 0xa

    const-string v6, "Whirlpool"

    const-string v8, "WHIRLPOOL"

    const/16 v9, 0x40

    const-string v10, "HMac-Whirlpool"

    move v7, v13

    move v11, v12

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->whirlpool:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 37
    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v4, "sha224"

    const/16 v5, 0xb

    const-string v6, "SHA-224"

    const-string v8, "SHA224"

    const/16 v9, 0x1c

    const-string v10, "HmacSHA224"

    move v7, v13

    move v11, v12

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha224:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 22
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    sget-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v1, v0, v12

    sget-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v1, v0, v15

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd128:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->whirlpool:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha224:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "jceId"    # Ljava/lang/String;
    .param p4, "ecmaId"    # I
    .param p5, "ecmaString"    # Ljava/lang/String;
    .param p6, "hashSize"    # I
    .param p7, "jceHmacId"    # Ljava/lang/String;
    .param p8, "needsBouncyCastle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    .line 49
    iput p4, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    .line 50
    iput-object p5, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    .line 51
    iput p6, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    .line 52
    iput-object p7, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    .line 53
    iput-boolean p8, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->needsBouncyCastle:Z

    .line 54
    return-void
.end method

.method public static fromEcmaId(I)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 6
    .param p0, "ecmaId"    # I

    .prologue
    .line 57
    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 58
    .local v1, "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    iget v4, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    if-ne v4, p0, :cond_0

    return-object v1

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_1
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "hash algorithm not found"

    invoke-direct {v4, v5}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static fromEcmaId(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 6
    .param p0, "ecmaString"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 65
    .local v1, "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    iget-object v4, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_1
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "hash algorithm not found"

    invoke-direct {v4, v5}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 72
    .local v1, "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    iget-object v4, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v1

    .line 71
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_2
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    const-string v5, "hash algorithm not found"

    invoke-direct {v4, v5}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method
