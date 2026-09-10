.class public final enum Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
.super Ljava/lang/Enum;
.source "CipherAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/poifs/crypt/CipherAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;


# instance fields
.field public final allowedKeySize:[I

.field public final blockSize:I

.field public final defaultKeySize:I

.field public final ecmaId:I

.field public final encryptedVerifierHashLength:I

.field public final jceId:Ljava/lang/String;

.field public final needsBouncyCastle:Z

.field public final provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field public final xmlId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 25
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "rc4"

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const-string v4, "RC4"

    const/16 v5, 0x6801

    const/16 v6, 0x40

    const/16 v7, 0xc

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    const/4 v8, -0x1

    const/16 v9, 0x14

    const-string v10, "RC4"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 27
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "aes128"

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const-string v4, "AES"

    const/16 v5, 0x660e

    const/16 v6, 0x80

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x80

    aput v9, v7, v8

    const/16 v8, 0x10

    const/16 v9, 0x20

    const-string v10, "AES"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 28
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "aes192"

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const-string v4, "AES"

    const/16 v5, 0x660f

    const/16 v6, 0xc0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc0

    aput v9, v7, v8

    const/16 v8, 0x10

    const/16 v9, 0x20

    const-string v10, "AES"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 29
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "aes256"

    const/4 v2, 0x3

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const-string v4, "AES"

    const/16 v5, 0x6610

    const/16 v6, 0x100

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x100

    aput v9, v7, v8

    const/16 v8, 0x10

    const/16 v9, 0x20

    const-string v10, "AES"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 30
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "rc2"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "RC2"

    const/4 v5, -0x1

    const/16 v6, 0x80

    const/16 v7, 0xc

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    const/16 v8, 0x8

    const/16 v9, 0x14

    const-string v10, "RC2"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 31
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "des"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-string v4, "DES"

    const/4 v5, -0x1

    const/16 v6, 0x40

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x40

    aput v9, v7, v8

    const/16 v8, 0x8

    const/16 v9, 0x20

    const-string v10, "DES"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 33
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "des3"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string v4, "DESede"

    const/4 v5, -0x1

    const/16 v6, 0xc0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc0

    aput v9, v7, v8

    const/16 v8, 0x8

    const/16 v9, 0x20

    const-string v10, "3DES"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 36
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "des3_112"

    const/4 v2, 0x7

    const/4 v3, 0x0

    const-string v4, "DESede"

    const/4 v5, -0x1

    const/16 v6, 0x80

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x80

    aput v9, v7, v8

    const/16 v8, 0x8

    const/16 v9, 0x20

    const-string v10, "3DES_112"

    const/4 v11, 0x1

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 38
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const-string v1, "rsa"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v4, "RSA"

    const/4 v5, -0x1

    const/16 v6, 0x400

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_2

    const/4 v8, -0x1

    const/4 v9, -0x1

    const-string v10, ""

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 22
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void

    .line 25
    :array_0
    .array-data 4
        0x28
        0x30
        0x38
        0x40
        0x48
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x28
        0x30
        0x38
        0x40
        0x48
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data

    .line 38
    :array_2
    .array-data 4
        0x400
        0x800
        0xc00
        0x1000
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V
    .locals 0
    .param p3, "provider"    # Lorg/apache/poi/poifs/crypt/CipherProvider;
    .param p4, "jceId"    # Ljava/lang/String;
    .param p5, "ecmaId"    # I
    .param p6, "defaultKeySize"    # I
    .param p7, "allowedKeySize"    # [I
    .param p8, "blockSize"    # I
    .param p9, "encryptedVerifierHashLength"    # I
    .param p10, "xmlId"    # Ljava/lang/String;
    .param p11, "needsBouncyCastle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/CipherProvider;",
            "Ljava/lang/String;",
            "II[III",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 53
    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    .line 54
    iput p5, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    .line 55
    iput p6, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    .line 56
    iput-object p7, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .line 57
    iput p8, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    .line 58
    iput p9, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    .line 59
    iput-object p10, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    .line 60
    iput-boolean p11, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->needsBouncyCastle:Z

    .line 61
    return-void
.end method

.method public static fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 7
    .param p0, "ecmaId"    # I

    .prologue
    .line 64
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 65
    .local v1, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    iget v4, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    if-ne v4, p0, :cond_0

    return-object v1

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    :cond_1
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cipher algorithm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static fromXmlId(Ljava/lang/String;I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 11
    .param p0, "xmlId"    # Ljava/lang/String;
    .param p1, "keySize"    # I

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v2, v0, v4

    .line 72
    .local v2, "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    iget-object v8, v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 71
    .end local v4    # "i$":I
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v7, :cond_0

    aget v5, v1, v3

    .line 74
    .local v5, "ks":I
    if-ne v5, p1, :cond_2

    return-object v2

    .line 73
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    .end local v1    # "arr$":[I
    .end local v2    # "ca":Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .end local v3    # "i$":I
    .end local v5    # "ks":I
    .end local v7    # "len$":I
    .restart local v4    # "i$":I
    :cond_3
    new-instance v8, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cipher algorithm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method
