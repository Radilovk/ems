.class public abstract Lorg/apache/poi/poifs/crypt/Decryptor;
.super Ljava/lang/Object;
.source "Decryptor.java"


# static fields
.field public static final DEFAULT_PASSWORD:Ljava/lang/String; = "VelvetSweatshop"

.field public static final DEFAULT_POIFS_ENTRY:Ljava/lang/String; = "EncryptedPackage"


# instance fields
.field protected final builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

.field private integrityHmacKey:[B

.field private integrityHmacValue:[B

.field private secretKey:Ljavax/crypto/SecretKey;

.field private verifier:[B


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;)V
    .locals 0
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    .line 40
    return-void
.end method

.method public static getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 3
    .param p0, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 77
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    .line 78
    .local v0, "d":Lorg/apache/poi/poifs/crypt/Decryptor;
    if-eqz v0, :cond_0

    .line 81
    return-object v0

    .line 79
    :cond_0
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Unsupported version"

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected getBlockSizeInBytes()I
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public abstract getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIntegrityHmacKey()[B
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    return-object v0
.end method

.method public getIntegrityHmacValue()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    return-object v0
.end method

.method protected getKeySizeInBytes()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public abstract getLength()J
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getVerifier()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    return-object v0
.end method

.method protected setIntegrityHmacKey([B)V
    .locals 0
    .param p1, "integrityHmacKey"    # [B

    .line 118
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    .line 119
    return-void
.end method

.method protected setIntegrityHmacValue([B)V
    .locals 0
    .param p1, "integrityHmacValue"    # [B

    .line 122
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    .line 123
    return-void
.end method

.method protected setSecretKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 110
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    .line 111
    return-void
.end method

.method protected setVerifier([B)V
    .locals 0
    .param p1, "verifier"    # [B

    .line 114
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    .line 115
    return-void
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
