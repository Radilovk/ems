.class public final enum Lorg/apache/poi/poifs/crypt/HashAlgorithm;
.super Ljava/lang/Enum;
.source "HashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .locals 19

    .line 23
    new-instance v9, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v1, "none"

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 24
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v11, "sha1"

    const/4 v12, 0x1

    const-string v13, "SHA-1"

    const v14, 0x8004

    const-string v15, "SHA1"

    const/16 v16, 0x14

    const-string v17, "HmacSHA1"

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 25
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v2, "sha256"

    const/4 v3, 0x2

    const-string v4, "SHA-256"

    const v5, 0x800c

    const-string v6, "SHA256"

    const/16 v7, 0x20

    const-string v8, "HmacSHA256"

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 26
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v11, "sha384"

    const/4 v12, 0x3

    const-string v13, "SHA-384"

    const v14, 0x800d

    const-string v15, "SHA384"

    const/16 v16, 0x30

    const-string v17, "HmacSHA384"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 27
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v2, "sha512"

    const/4 v3, 0x4

    const-string v4, "SHA-512"

    const v5, 0x800e

    const-string v6, "SHA512"

    const/16 v7, 0x40

    const-string v8, "HmacSHA512"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 29
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v11, "md5"

    const/4 v12, 0x5

    const-string v13, "MD5"

    const/4 v14, -0x1

    const-string v15, "MD5"

    const/16 v16, 0x10

    const-string v17, "HmacMD5"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 31
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v2, "md2"

    const/4 v3, 0x6

    const-string v4, "MD2"

    const/4 v5, -0x1

    const-string v6, "MD2"

    const/16 v7, 0x10

    const-string v8, "Hmac-MD2"

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 32
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v11, "md4"

    const/4 v12, 0x7

    const-string v13, "MD4"

    const-string v15, "MD4"

    const-string v17, "Hmac-MD4"

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 33
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v2, "ripemd128"

    const/16 v3, 0x8

    const-string v4, "RipeMD128"

    const-string v6, "RIPEMD-128"

    const-string v8, "HMac-RipeMD128"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd128:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 34
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v11, "ripemd160"

    const/16 v12, 0x9

    const-string v13, "RipeMD160"

    const-string v15, "RIPEMD-160"

    const/16 v16, 0x14

    const-string v17, "HMac-RipeMD160"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 35
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v2, "whirlpool"

    const/16 v3, 0xa

    const-string v4, "Whirlpool"

    const-string v6, "WHIRLPOOL"

    const/16 v7, 0x40

    const-string v8, "HMac-Whirlpool"

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->whirlpool:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 37
    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v11, "sha224"

    const/16 v12, 0xb

    const-string v13, "SHA-224"

    const-string v15, "SHA224"

    const/16 v16, 0x1c

    const-string v17, "HmacSHA224"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha224:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 22
    const/16 v1, 0xc

    new-array v1, v1, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd128:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->whirlpool:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

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
    .locals 5
    .param p0, "ecmaId"    # I

    .line 57
    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    .local v3, "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    iget v4, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 57
    .end local v3    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "hash algorithm not found"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromEcmaId(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 5
    .param p0, "ecmaString"    # Ljava/lang/String;

    .line 64
    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    .local v3, "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 64
    .end local v3    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "hash algorithm not found"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .line 71
    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 72
    .local v3, "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 71
    .end local v3    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .restart local v3    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_1
    :goto_1
    return-object v3

    .line 74
    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "ha":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :cond_2
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "hash algorithm not found"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    .line 22
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method
