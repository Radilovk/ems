.class public final enum Lorg/apache/poi/poifs/crypt/EncryptionMode;
.super Ljava/lang/Enum;
.source "EncryptionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/EncryptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

.field public static final enum standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;


# instance fields
.field public final builder:Ljava/lang/String;

.field public final encryptionFlags:I

.field public final versionMajor:I

.field public final versionMinor:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 30
    new-instance v7, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string v1, "binaryRC4"

    const/4 v2, 0x0

    const-string v3, "org.apache.poi.poifs.crypt.binaryrc4.BinaryRC4EncryptionInfoBuilder"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 32
    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string v9, "cryptoAPI"

    const/4 v10, 0x1

    const-string v11, "org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIEncryptionInfoBuilder"

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x4

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 34
    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string v2, "standard"

    const/4 v3, 0x2

    const-string v4, "org.apache.poi.poifs.crypt.standard.StandardEncryptionInfoBuilder"

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/16 v7, 0x24

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 36
    new-instance v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const-string v9, "agile"

    const/4 v10, 0x3

    const-string v11, "org.apache.poi.poifs.crypt.agile.AgileEncryptionInfoBuilder"

    const/4 v13, 0x4

    const/16 v14, 0x40

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/poifs/crypt/EncryptionMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 28
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/poi/poifs/crypt/EncryptionMode;

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionMode;->standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p3, "builder"    # Ljava/lang/String;
    .param p4, "versionMajor"    # I
    .param p5, "versionMinor"    # I
    .param p6, "encryptionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->builder:Ljava/lang/String;

    .line 46
    iput p4, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    .line 47
    iput p5, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    .line 48
    iput p6, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->encryptionFlags:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->$VALUES:[Lorg/apache/poi/poifs/crypt/EncryptionMode;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/EncryptionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/EncryptionMode;

    return-object v0
.end method
