.class public Lorg/apache/poi/poifs/crypt/EncryptionInfo;
.super Ljava/lang/Object;
.source "EncryptionInfo.java"


# static fields
.field public static flagAES:Lorg/apache/poi/util/BitField;

.field public static flagCryptoAPI:Lorg/apache/poi/util/BitField;

.field public static flagDocProps:Lorg/apache/poi/util/BitField;

.field public static flagExternal:Lorg/apache/poi/util/BitField;


# instance fields
.field private final decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

.field private final encryptionFlags:I

.field private final encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

.field private final header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

.field private final verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

.field private final versionMajor:I

.field private final versionMinor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    .line 56
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    .line 62
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagExternal:Lorg/apache/poi/util/BitField;

    .line 68
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 7
    .param p1, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 218
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 8
    .param p1, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .param p2, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p3, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p4, "keyBits"    # I
    .param p5, "blockSize"    # I
    .param p6, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 244
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    .line 245
    iget v0, p1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->encryptionFlags:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 249
    :try_start_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .local v1, "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    nop

    .line 254
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 256
    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    .line 257
    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 258
    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    .line 259
    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    .line 260
    return-void

    .line 250
    .end local v1    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const-string v0, "EncryptionInfo"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/util/LittleEndianInput;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 0
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-direct {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 7
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .param p3, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p4, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p5, "keyBits"    # I
    .param p6, "blockSize"    # I
    .param p7, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 0
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p2, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-direct {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 7
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .param p2, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .param p3, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p4, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p5, "keyBits"    # I
    .param p6, "blockSize"    # I
    .param p7, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/crypt/EncryptionMode;)V
    .locals 0
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p2, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-direct {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 7
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .param p2, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .param p3, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p4, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p5, "keyBits"    # I
    .param p6, "blockSize"    # I
    .param p7, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionMode;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Z)V
    .locals 4
    .param p1, "dis"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "isCryptoAPI"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    .line 93
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    .line 95
    if-nez p2, :cond_0

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v0, v1, :cond_0

    .line 98
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->binaryRC4:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 99
    .local v0, "encryptionMode":Lorg/apache/poi/poifs/crypt/EncryptionMode;
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    goto :goto_0

    .line 100
    .end local v0    # "encryptionMode":Lorg/apache/poi/poifs/crypt/EncryptionMode;
    :cond_0
    if-nez p2, :cond_1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v0, v1, :cond_1

    .line 103
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 104
    .restart local v0    # "encryptionMode":Lorg/apache/poi/poifs/crypt/EncryptionMode;
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    goto :goto_0

    .line 105
    .end local v0    # "encryptionMode":Lorg/apache/poi/poifs/crypt/EncryptionMode;
    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x2

    if-nez p2, :cond_2

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    if-gt v1, v2, :cond_2

    if-gt v2, v0, :cond_2

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionMode;->standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v3, v3, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v2, v3, :cond_2

    .line 108
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->standard:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 109
    .restart local v0    # "encryptionMode":Lorg/apache/poi/poifs/crypt/EncryptionMode;
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    goto :goto_0

    .line 110
    .end local v0    # "encryptionMode":Lorg/apache/poi/poifs/crypt/EncryptionMode;
    :cond_2
    if-eqz p2, :cond_3

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    if-gt v1, v2, :cond_3

    if-gt v2, v0, :cond_3

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    sget-object v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v1, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne v0, v1, :cond_3

    .line 113
    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->cryptoAPI:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    .line 114
    .restart local v0    # "encryptionMode":Lorg/apache/poi/poifs/crypt/EncryptionMode;
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 128
    :goto_0
    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v1, "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    nop

    .line 133
    invoke-interface {v1, p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V

    .line 134
    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    .line 135
    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 136
    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    .line 137
    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    .line 138
    return-void

    .line 129
    .end local v1    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    .local v2, "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 116
    .end local v0    # "encryptionMode":Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    :cond_3
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    .line 117
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encryption: version major: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / version minor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / fCrypto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / fExternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagExternal:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / fDocProps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagDocProps:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / fAES: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    invoke-virtual {v2, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getBuilder(Lorg/apache/poi/poifs/crypt/EncryptionMode;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    .locals 2
    .param p0, "encryptionMode"    # Lorg/apache/poi/poifs/crypt/EncryptionMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 266
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->builder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    .line 267
    .local v1, "eib":Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    return-object v1
.end method


# virtual methods
.method public getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->decryptor:Lorg/apache/poi/poifs/crypt/Decryptor;

    return-object v0
.end method

.method public getEncryptionFlags()I
    .locals 1

    .line 279
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptionFlags:I

    return v0
.end method

.method public getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->encryptor:Lorg/apache/poi/poifs/crypt/Encryptor;

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->header:Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    return-object v0
.end method

.method public getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->verifier:Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    return-object v0
.end method

.method public getVersionMajor()I
    .locals 1

    .line 271
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMajor:I

    return v0
.end method

.method public getVersionMinor()I
    .locals 1

    .line 275
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->versionMinor:I

    return v0
.end method
