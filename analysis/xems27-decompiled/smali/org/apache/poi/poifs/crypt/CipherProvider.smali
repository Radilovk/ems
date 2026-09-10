.class public final enum Lorg/apache/poi/poifs/crypt/CipherProvider;
.super Ljava/lang/Enum;
.source "CipherProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/CipherProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/CipherProvider;

.field public static final enum aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field public static final enum rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;


# instance fields
.field public final cipherProviderName:Ljava/lang/String;

.field public final ecmaId:I

.field public final jceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    new-instance v6, Lorg/apache/poi/poifs/crypt/CipherProvider;

    const-string v1, "rc4"

    const/4 v2, 0x0

    const-string v3, "RC4"

    const/4 v4, 0x1

    const-string v5, "Microsoft Base Cryptographic Provider v1.0"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CipherProvider;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 24
    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherProvider;

    const-string v8, "aes"

    const/4 v9, 0x1

    const-string v10, "AES"

    const/16 v11, 0x18

    const-string v12, "Microsoft Enhanced RSA and AES Cryptographic Provider"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/poifs/crypt/CipherProvider;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 22
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/poi/poifs/crypt/CipherProvider;

    sget-object v2, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/poi/poifs/crypt/CipherProvider;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "jceId"    # Ljava/lang/String;
    .param p4, "ecmaId"    # I
    .param p5, "cipherProviderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/CipherProvider;->jceId:Ljava/lang/String;

    .line 38
    iput p4, p0, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    .line 39
    iput-object p5, p0, Lorg/apache/poi/poifs/crypt/CipherProvider;->cipherProviderName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherProvider;
    .locals 5
    .param p0, "ecmaId"    # I

    .line 27
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherProvider;->values()[Lorg/apache/poi/poifs/crypt/CipherProvider;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/CipherProvider;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 28
    .local v3, "cp":Lorg/apache/poi/poifs/crypt/CipherProvider;
    iget v4, v3, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    if-ne v4, p0, :cond_0

    return-object v3

    .line 27
    .end local v3    # "cp":Lorg/apache/poi/poifs/crypt/CipherProvider;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "arr$":[Lorg/apache/poi/poifs/crypt/CipherProvider;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "cipher provider not found"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/CipherProvider;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/CipherProvider;
    .locals 1

    .line 22
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/CipherProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-object v0
.end method
